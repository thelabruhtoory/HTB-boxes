# Nmap 7.92 scan initiated Sun Mar 13 01:27:18 2022 as: nmap -vvv -p 22,80,1337 --script vuln -oN /HTB-boxes/backdoor/recon/nmap_init_vuln.md 10.10.11.125
Nmap scan report for 10.10.11.125
Host is up, received syn-ack (0.15s latency).
Scanned at 2022-03-13 01:27:29 EST for 45s

PORT     STATE SERVICE REASON
22/tcp   open  ssh     syn-ack
80/tcp   open  http    syn-ack
| http-enum: 
|   /wp-login.php: Possible admin folder
|   /readme.html: Wordpress version: 2 
|   /: WordPress version: 5.8.1
|   /wp-includes/images/rss.png: Wordpress version 2.2 found.
|   /wp-includes/js/jquery/suggest.js: Wordpress version 2.5 found.
|   /wp-includes/images/blank.gif: Wordpress version 2.6 found.
|   /wp-includes/js/comment-reply.js: Wordpress version 2.7 found.
|   /wp-login.php: Wordpress login page.
|   /wp-admin/upgrade.php: Wordpress login page.
|_  /readme.html: Interesting, a readme.
|_http-csrf: Couldn't find any CSRF vulnerabilities.
| http-wordpress-users: 
| Username found: admin
|_Search stopped at ID #25. Increase the upper limit if necessary with 'http-wordpress-users.limit'
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
1337/tcp open  waste   syn-ack

Read data files from: /usr/bin/../share/nmap
# Nmap done at Sun Mar 13 01:28:14 2022 -- 1 IP address (1 host up) scanned in 55.86 seconds
