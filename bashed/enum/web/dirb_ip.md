DIRB v2.22    
By The Dark Raver
-----------------

OUTPUT_FILE: /HTB-boxes/bashed/enum/web/dirb_ip.md
START_TIME: Wed Mar 16 21:29:53 2022
URL_BASE: http://10.10.10.68:80/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt

-----------------

GENERATED WORDS: 4612

---- Scanning URL: http://10.10.10.68:80/ ----
==> DIRECTORY: http://10.10.10.68:80/css/
==> DIRECTORY: http://10.10.10.68:80/dev/
==> DIRECTORY: http://10.10.10.68:80/fonts/
==> DIRECTORY: http://10.10.10.68:80/images/
+ http://10.10.10.68:80/index.html (CODE:200|SIZE:7743)
==> DIRECTORY: http://10.10.10.68:80/js/
==> DIRECTORY: http://10.10.10.68:80/php/
+ http://10.10.10.68:80/server-status (CODE:403|SIZE:299)
==> DIRECTORY: http://10.10.10.68:80/uploads/

---- Entering directory: http://10.10.10.68:80/css/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/dev/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/fonts/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/images/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/js/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/php/ ----
(!) WARNING: Directory IS LISTABLE. No need to scan it.
    (Use mode '-w' if you want to scan it anyway)

---- Entering directory: http://10.10.10.68:80/uploads/ ----
+ http://10.10.10.68:80/uploads/index.html (CODE:200|SIZE:14)

-----------------
END_TIME: Wed Mar 16 22:01:57 2022
DOWNLOADED: 9224 - FOUND: 3
