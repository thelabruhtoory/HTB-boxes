_______________________________________________________________
         __          _______   _____
         \ \        / /  __ \ / ____|
          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
            \  /\  /  | |     ____) | (__| (_| | | | |
             \/  \/   |_|    |_____/ \___|\__,_|_| |_|

         WordPress Security Scanner by the WPScan Team
                         Version 3.8.20
       Sponsored by Automattic - https://automattic.com/
       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
_______________________________________________________________

[+] URL: http://backdoor.HTB-boxes/ [10.10.11.125]
[+] Started: Sun Mar 13 03:31:58 2022

Interesting Finding(s):

[+] Headers
 | Interesting Entry: Server: Apache/2.4.41 (Ubuntu)
 | Found By: Headers (Passive Detection)
 | Confidence: 100%

[+] XML-RPC seems to be enabled: http://backdoor.HTB-boxes/xmlrpc.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%
 | References:
 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/

[+] WordPress readme found: http://backdoor.HTB-boxes/readme.html
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[+] Upload directory has listing enabled: http://backdoor.HTB-boxes/wp-content/uploads/
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[+] The external WP-Cron seems to be enabled: http://backdoor.HTB-boxes/wp-cron.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 60%
 | References:
 |  - https://www.iplocation.net/defend-wordpress-from-ddos
 |  - https://github.com/wpscanteam/wpscan/issues/1299

[+] WordPress version 5.8.1 identified (Insecure, released on 2021-09-09).
 | Found By: Rss Generator (Passive Detection)
 |  - http://backdoor.HTB-boxes/index.php/feed/, <generator>https://wordpress.org/?v=5.8.1</generator>
 |  - http://backdoor.HTB-boxes/index.php/comments/feed/, <generator>https://wordpress.org/?v=5.8.1</generator>

[+] WordPress theme in use: twentyseventeen
 | Location: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/readme.txt
 | [!] The version is out of date, the latest version is 2.9
 | Style URL: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/style.css?ver=20201208
 | Style Name: Twenty Seventeen
 | Style URI: https://wordpress.org/themes/twentyseventeen/
 | Description: Twenty Seventeen brings your site to life with header video and immersive featured images. With a fo...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Css Style In Homepage (Passive Detection)
 |
 | Version: 2.8 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/style.css?ver=20201208, Match: 'Version: 2.8'


[i] Plugin(s) Identified:

[+] akismet
 | Location: http://backdoor.HTB-boxes/wp-content/plugins/akismet/
 | Latest Version: 4.2.2
 | Last Updated: 2022-01-24T16:11:00.000Z
 |
 | Found By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/plugins/akismet/, status: 403
 |
 | The version could not be determined.

[+] ebook-download
 | Location: http://backdoor.HTB-boxes/wp-content/plugins/ebook-download/
 | Last Updated: 2020-03-12T12:52:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/plugins/ebook-download/readme.txt
 | [!] The version is out of date, the latest version is 1.5
 | [!] Directory listing is enabled
 |
 | Found By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/plugins/ebook-download/, status: 200
 |
 | Version: 1.1 (100% confidence)
 | Found By: Readme - Stable Tag (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/plugins/ebook-download/readme.txt
 | Confirmed By: Readme - ChangeLog Section (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/plugins/ebook-download/readme.txt


[i] Theme(s) Identified:

[+] twentynineteen
 | Location: http://backdoor.HTB-boxes/wp-content/themes/twentynineteen/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/themes/twentynineteen/readme.txt
 | [!] The version is out of date, the latest version is 2.2
 | Style URL: http://backdoor.HTB-boxes/wp-content/themes/twentynineteen/style.css
 | Style Name: Twenty Nineteen
 | Style URI: https://wordpress.org/themes/twentynineteen/
 | Description: Our 2019 default theme is designed to show off the power of the block editor. It features custom sty...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentynineteen/, status: 500
 |
 | Version: 2.1 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentynineteen/style.css, Match: 'Version: 2.1'

[+] twentyseventeen
 | Location: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/readme.txt
 | [!] The version is out of date, the latest version is 2.9
 | Style URL: http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/style.css
 | Style Name: Twenty Seventeen
 | Style URI: https://wordpress.org/themes/twentyseventeen/
 | Description: Twenty Seventeen brings your site to life with header video and immersive featured images. With a fo...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Urls In Homepage (Passive Detection)
 | Confirmed By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/, status: 500
 |
 | Version: 2.8 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentyseventeen/style.css, Match: 'Version: 2.8'

[+] twentytwenty
 | Location: http://backdoor.HTB-boxes/wp-content/themes/twentytwenty/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/themes/twentytwenty/readme.txt
 | [!] The version is out of date, the latest version is 1.9
 | Style URL: http://backdoor.HTB-boxes/wp-content/themes/twentytwenty/style.css
 | Style Name: Twenty Twenty
 | Style URI: https://wordpress.org/themes/twentytwenty/
 | Description: Our default theme for 2020 is designed to take full advantage of the flexibility of the block editor...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Urls In Homepage (Passive Detection)
 | Confirmed By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentytwenty/, status: 500
 |
 | Version: 1.8 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentytwenty/style.css, Match: 'Version: 1.8'

[+] twentytwentyone
 | Location: http://backdoor.HTB-boxes/wp-content/themes/twentytwentyone/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://backdoor.HTB-boxes/wp-content/themes/twentytwentyone/readme.txt
 | [!] The version is out of date, the latest version is 1.5
 | Style URL: http://backdoor.HTB-boxes/wp-content/themes/twentytwentyone/style.css
 | Style Name: Twenty Twenty-One
 | Style URI: https://wordpress.org/themes/twentytwentyone/
 | Description: Twenty Twenty-One is a blank canvas for your ideas and it makes the block editor your best brush. Wi...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Known Locations (Aggressive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentytwentyone/, status: 500
 |
 | Version: 1.4 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://backdoor.HTB-boxes/wp-content/themes/twentytwentyone/style.css, Match: 'Version: 1.4'


[i] No Timthumbs Found.


[i] No Config Backups Found.


[i] No DB Exports Found.


[i] No Medias Found.


[i] User(s) Identified:

[+] admin
 | Found By: Rss Generator (Passive Detection)
 | Confirmed By:
 |  Wp Json Api (Aggressive Detection)
 |   - http://backdoor.HTB-boxes/index.php/wp-json/wp/v2/users/?per_page=100&page=1
 |  Author Id Brute Forcing - Author Pattern (Aggressive Detection)
 |  Login Error Messages (Aggressive Detection)

[!] No WPScan API Token given, as a result vulnerability data has not been output.
[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register

[+] Finished: Sun Mar 13 04:32:05 2022
[+] Requests Done: 123922
[+] Cached Requests: 45
[+] Data Sent: 27.376 MB
[+] Data Received: 17.484 MB
[+] Memory used: 550.051 MB
[+] Elapsed time: 01:00:06
