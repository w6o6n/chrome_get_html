# chrome_get_html
AppleScript: Get html source of a URL with Google Chrome

Open the URL received from argv[1] with Secret mode of Google Chrome.
If Chrome is not running, Chrome will startup in background and open the URL.
Get the html source code, then close the window automatically.

If succeed, save the source code to a file (argv[2]) and return "OK".
If failed, return "NG".

Usage: osascript chrome_get_html.scpt "https://google.com" "/tmp/some_file.txt"
Output: stdout=string ("OK" or "NG"), and a path(argv[2])=html source code.
