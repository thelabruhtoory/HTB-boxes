# Nmap 7.92 scan initiated Wed Mar 16 04:37:29 2022 as: nmap -vvv -Pn -p 80,2222 --script vuln -oN /HTB-boxes/shocker/recon/nmap_all_vuln.md 10.10.10.56
Nmap scan report for shocker.htb (10.10.10.56)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-16 04:37:39 EDT for 311s

PORT     STATE SERVICE      REASON
80/tcp   open  http         syn-ack
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
2222/tcp open  EtherNetIP-1 syn-ack

Read data files from: /usr/bin/../share/nmap
# Nmap done at Wed Mar 16 04:42:50 2022 -- 1 IP address (1 host up) scanned in 321.20 seconds
