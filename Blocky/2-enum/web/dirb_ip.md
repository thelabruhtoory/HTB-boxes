
-----------------
DIRB v2.22    
By The Dark Raver
-----------------

OUTPUT_FILE: /HTB-boxes/Blocky/2-enum/web/dirb_ip.md
START_TIME: Sun May  8 18:29:55 2022
URL_BASE: http://10.10.10.37:80/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt

-----------------

GENERATED WORDS: 4612

---- Scanning URL: http://10.10.10.37:80/ ----
+ http://10.10.10.37:80/index.php (CODE:301|SIZE:0)
==> DIRECTORY: http://10.10.10.37:80/javascript/
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/
==> DIRECTORY: http://10.10.10.37:80/plugins/
+ http://10.10.10.37:80/server-status (CODE:403|SIZE:299)
==> DIRECTORY: http://10.10.10.37:80/wiki/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/
==> DIRECTORY: http://10.10.10.37:80/wp-content/
==> DIRECTORY: http://10.10.10.37:80/wp-includes/
+ http://10.10.10.37:80/xmlrpc.php (CODE:405|SIZE:42)

---- Entering directory: http://10.10.10.37:80/javascript/ ----
==> DIRECTORY: http://10.10.10.37:80/javascript/jquery/

---- Entering directory: http://10.10.10.37:80/phpmyadmin/ ----
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/doc/
+ http://10.10.10.37:80/phpmyadmin/favicon.ico (CODE:200|SIZE:22486)
+ http://10.10.10.37:80/phpmyadmin/index.php (CODE:200|SIZE:10322)
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/js/
+ http://10.10.10.37:80/phpmyadmin/libraries (CODE:403|SIZE:306)
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/locale/
+ http://10.10.10.37:80/phpmyadmin/phpinfo.php (CODE:200|SIZE:10324)
+ http://10.10.10.37:80/phpmyadmin/setup (CODE:401|SIZE:458)
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/sql/
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/templates/
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/themes/

---- Entering directory: http://10.10.10.37:80/plugins/ ----
==> DIRECTORY: http://10.10.10.37:80/plugins/assets/
==> DIRECTORY: http://10.10.10.37:80/plugins/files/
+ http://10.10.10.37:80/plugins/index.html (CODE:200|SIZE:745)

---- Entering directory: http://10.10.10.37:80/wiki/ ----
+ http://10.10.10.37:80/wiki/index.php (CODE:200|SIZE:380)

---- Entering directory: http://10.10.10.37:80/wp-admin/ ----
+ http://10.10.10.37:80/wp-admin/admin.php (CODE:302|SIZE:0)
==> DIRECTORY: http://10.10.10.37:80/wp-admin/css/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/images/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/includes/
+ http://10.10.10.37:80/wp-admin/index.php (CODE:302|SIZE:0)
==> DIRECTORY: http://10.10.10.37:80/wp-admin/js/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/maint/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/network/
==> DIRECTORY: http://10.10.10.37:80/wp-admin/user/

---- Entering directory: http://10.10.10.37:80/wp-content/ ----
+ http://10.10.10.37:80/wp-content/index.php (CODE:200|SIZE:0)
==> DIRECTORY: http://10.10.10.37:80/wp-content/plugins/
==> DIRECTORY: http://10.10.10.37:80/wp-content/themes/
==> DIRECTORY: http://10.10.10.37:80/wp-content/uploads/

---- Entering directory: http://10.10.10.37:80/wp-includes/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.37:80/javascript/jquery/ ----
+ http://10.10.10.37:80/javascript/jquery/jquery (CODE:200|SIZE:284394)

---- Entering directory: http://10.10.10.37:80/phpmyadmin/doc/ ----
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/doc/html/

(!) FATAL: Too many errors connecting to host
    (Possible cause: COULDNT CONNECT)

-----------------
END_TIME: Sun May  8 20:41:29 2022
DOWNLOADED: 39149 - FOUND: 14
