
-----------------
DIRB v2.22    
By The Dark Raver
-----------------

OUTPUT_FILE: /HTB-boxes/shocker/enum/web/dirb_ip_ext.md
START_TIME: Wed Mar 16 04:46:16 2022
URL_BASE: http://10.10.10.56:80/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt
EXTENSIONS_LIST: (.txt,.sh,.php,.pl,.py,.xml,.bak) | (.txt)(.sh)(.php)(.pl)(.py)(.xml)(.bak) [NUM = 7]

-----------------

GENERATED WORDS: 4612

---- Scanning URL: http://10.10.10.56:80/ ----

-----------------
DIRB v2.22    
By The Dark Raver
-----------------

OUTPUT_FILE: /HTB-boxes/shocker/enum/web/dirb_ip_ext.md
START_TIME: Wed Mar 16 04:55:33 2022
URL_BASE: http://10.10.10.56:80//cgi-bin/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt
EXTENSIONS_LIST: (.txt,.sh,.pl) | (.txt)(.sh)(.pl) [NUM = 3]

-----------------

GENERATED WORDS: 4612

---- Scanning URL: http://10.10.10.56:80//cgi-bin/ ----
+ http://10.10.10.56:80//cgi-bin/user.sh (CODE:200|SIZE:119)

-----------------
END_TIME: Wed Mar 16 05:31:01 2022
DOWNLOADED: 13836 - FOUND: 1
