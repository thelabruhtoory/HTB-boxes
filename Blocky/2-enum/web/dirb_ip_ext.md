
-----------------
DIRB v2.22    
By The Dark Raver
-----------------

OUTPUT_FILE: /HTB-boxes/Blocky/2-enum/web/dirb_ip_ext.md
START_TIME: Sun May  8 18:30:08 2022
URL_BASE: http://10.10.10.37:80/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt
EXTENSIONS_LIST: (.txt,.sh,.php,.pl,.py,.xml,.bak) | (.txt)(.sh)(.php)(.pl)(.py)(.xml)(.bak) [NUM = 7]

-----------------

GENERATED WORDS: 4612

---- Scanning URL: http://10.10.10.37:80/ ----
+ http://10.10.10.37:80/index.php (CODE:301|SIZE:0)
+ http://10.10.10.37:80/license.txt (CODE:200|SIZE:19935)
+ http://10.10.10.37:80/wp-blog-header.php (CODE:200|SIZE:0)
+ http://10.10.10.37:80/wp-config.php (CODE:200|SIZE:0)
+ http://10.10.10.37:80/wp-cron.php (CODE:200|SIZE:0)
+ http://10.10.10.37:80/wp-links-opml.php (CODE:200|SIZE:219)
+ http://10.10.10.37:80/wp-load.php (CODE:200|SIZE:0)
+ http://10.10.10.37:80/wp-login.php (CODE:200|SIZE:2402)
+ http://10.10.10.37:80/wp-mail.php (CODE:403|SIZE:3444)
+ http://10.10.10.37:80/wp-settings.php (CODE:500|SIZE:0)
+ http://10.10.10.37:80/wp-signup.php (CODE:302|SIZE:0)
+ http://10.10.10.37:80/wp-trackback.php (CODE:200|SIZE:135)
+ http://10.10.10.37:80/xmlrpc.php (CODE:405|SIZE:42)

-----------------
END_TIME: Sun May  8 20:17:33 2022
DOWNLOADED: 32284 - FOUND: 13
