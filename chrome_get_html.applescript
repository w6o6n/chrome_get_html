(* 
Open the URL received from argv[1] with Secret mode of Google Chrome.
If Chrome is not running, Chrome will startup in background and open the URL.
Get the html source code, then close the window automatically.

If succeed, save the source code to a file (argv[2]) and return "OK".
If failed, return "NG".

Usage: osascript chrome_get_html.scpt "https://google.com" "/tmp/some_file.txt"
Output: stdout=string ("OK" or "NG"), specified path(argv[2])=html source code.
*)

on run argv
	
	set aURL to (item 1 of argv) as string
	set filePath_POSIX to (item 2 of argv) as string
	
	set filePath to filePath_POSIX as POSIX file
	
	if application "Google Chrome" is running then
		set aSource to getHTML_chrome_already_running(aURL) of me
	else
		set aSource to getHTML_chrome_not_running(aURL) of me
	end if
	
	if aSource starts with "<html" then
		savefile(filePath, aSource) of me
		return "OK"
	else
		return "NG"
	end if
	
end run


on getHTML_chrome_already_running(aURL)
	tell application "Google Chrome"
		set aWin to make new window with properties {mode:"incognito", visible:false} --secret mode
		tell active tab of window id (id of aWin)
			set URL to aURL --momentary displayed at this point
			set visible of aWin to false
			-- Wait for the html load
			repeat 20 times
				if loading is false then
					exit repeat
				else
					delay 0.5
				end if
			end repeat
			-- Get source of the tab
			set aSource to execute javascript "document.documentElement.outerHTML" as Unicode text
			delay 1
			close
		end tell
	end tell
	return aSource
end getHTML_chrome_already_running


on getHTML_chrome_not_running(aURL)
	do shell script "open -a Google\\ Chrome -j --args -incognito " & aURL
	tell application "Google Chrome"
		tell active tab of window 1
			set URL to aURL
			-- Wait for the html load
			repeat 20 times
				if loading is false then
					exit repeat
				else
					delay 0.5
				end if
			end repeat
			-- Get source of the tab
			set aSource to execute javascript "document.documentElement.outerHTML" as Unicode text
			delay 1
			close
		end tell
		quit
	end tell
	return aSource
end getHTML_chrome_not_running


on savefile(filePath, some_data)
	try
		set fseek to open for access filePath with write permission
		set eof fseek to 0
		write some_data to fseek
	end try
	close access fseek
end savefile