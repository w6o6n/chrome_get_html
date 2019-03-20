# chrome_get_html
Copyright 2019 w6o6n. All rights reserved under the MIT license.

An AppleScript to get html source of a URL with Google Chrome.

Enviroment: tested on macOS 10.11.6 + Google Chrome 72.0.3626.121.


Usage: osascript chrome_get_html.scpt "https://google.com" "/tmp/some_file.txt"

Output to stdout: string ("OK" or "NG")
Output to path(=argv[2]): html source code of a URL(=argv[1])


Description of the script:
Open the URL received from argv[1] with Secret mode of Google Chrome.
If Chrome is not running, Chrome will startup in background and open the URL.
Get the html source code, then close the window automatically.
If succeed, save the source code to a file (argv[2]) and return "OK".
If failed, return "NG".

