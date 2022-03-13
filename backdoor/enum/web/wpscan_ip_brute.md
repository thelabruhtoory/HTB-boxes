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

[32m[+][0m URL: http://10.10.11.125/ [10.10.11.125]
[32m[+][0m Started: Sun Mar 13 03:16:27 2022

Interesting Finding(s):

[32m[+][0m Headers
 | Interesting Entry: Server: Apache/2.4.41 (Ubuntu)
 | Found By: Headers (Passive Detection)
 | Confidence: 100%

[32m[+][0m XML-RPC seems to be enabled: http://10.10.11.125/xmlrpc.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%
 | References:
 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/

[32m[+][0m WordPress readme found: http://10.10.11.125/readme.html
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[32m[+][0m Upload directory has listing enabled: http://10.10.11.125/wp-content/uploads/
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[32m[+][0m The external WP-Cron seems to be enabled: http://10.10.11.125/wp-cron.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 60%
 | References:
 |  - https://www.iplocation.net/defend-wordpress-from-ddos
 |  - https://github.com/wpscanteam/wpscan/issues/1299

[32m[+][0m WordPress version 5.8.1 identified (Insecure, released on 2021-09-09).
 | Found By: Rss Generator (Passive Detection)
 |  - http://10.10.11.125/index.php/feed/, <generator>https://wordpress.org/?v=5.8.1</generator>
 |  - http://10.10.11.125/index.php/comments/feed/, <generator>https://wordpress.org/?v=5.8.1</generator>

[32m[+][0m WordPress theme in use: twentyseventeen
 | Location: http://10.10.11.125/wp-content/themes/twentyseventeen/
 | Last Updated: 2022-01-25T00:00:00.000Z
 | Readme: http://10.10.11.125/wp-content/themes/twentyseventeen/readme.txt
 | [33m[!][0m The version is out of date, the latest version is 2.9
 | Style URL: http://10.10.11.125/wp-content/themes/twentyseventeen/style.css?ver=20201208
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
 |  - http://10.10.11.125/wp-content/themes/twentyseventeen/style.css?ver=20201208, Match: 'Version: 2.8'


[34m[i][0m No plugins Found.


[34m[i][0m No Config Backups Found.


[34m[i][0m No Valid Passwords Found.

[33m[!][0m No WPScan API Token given, as a result vulnerability data has not been output.
[33m[!][0m You can get a free API token with 25 daily requests by registering at https://wpscan.com/register

[32m[+][0m Finished: Sun Mar 13 05:00:14 2022
[32m[+][0m Requests Done: 97661
[32m[+][0m Cached Requests: 26
[32m[+][0m Data Sent: 32.324 MB
[32m[+][0m Data Received: 601.264 MB
[32m[+][0m Memory used: 350.449 MB
[32m[+][0m Elapsed time: 01:43:47

Scan Aborted: SIGHUP
Trace: /usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/formatter.rb:84:in `write'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/formatter.rb:84:in `puts'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/formatter.rb:84:in `puts'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/formatter.rb:84:in `output'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/controller.rb:59:in `output'
/usr/share/rubygems-integration/all/gems/wpscan-3.8.20/app/controllers/password_attack.rb:54:in `ensure in run'
/usr/share/rubygems-integration/all/gems/wpscan-3.8.20/app/controllers/password_attack.rb:54:in `run'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/controllers.rb:50:in `each'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/controllers.rb:50:in `block in run'
/usr/lib/ruby/2.7.0/timeout.rb:78:in `timeout'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/controllers.rb:45:in `run'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/scan.rb:24:in `run'
/usr/share/rubygems-integration/all/gems/wpscan-3.8.20/bin/wpscan:17:in `block in <top (required)>'
/usr/share/rubygems-integration/all/gems/cms_scanner-0.13.6/lib/cms_scanner/scan.rb:15:in `initialize'
/usr/share/rubygems-integration/all/gems/wpscan-3.8.20/bin/wpscan:6:in `new'
/usr/share/rubygems-integration/all/gems/wpscan-3.8.20/bin/wpscan:6:in `<top (required)>'
/usr/bin/wpscan:25:in `load'
/usr/bin/wpscan:25:in `<main>'
