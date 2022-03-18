# Nmap 7.92 scan initiated Thu Mar 17 19:18:51 2022 as: nmap -vvv -Pn -p 80,22 --script vuln -oN /HTB-boxes/nibbles/recon/nmap_all_vuln.md 10.10.10.75
Nmap scan report for nibbles.htb (10.10.10.75)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-17 19:19:01 EDT for 312s

PORT   STATE SERVICE REASON
22/tcp open  ssh     syn-ack
80/tcp open  http    syn-ack
| http-slowloris-check: 
|   VULNERABLE:
|   Slowloris DOS attack
|     State: LIKELY VULNERABLE
|     IDs:  CVE:CVE-2007-6750
|       Slowloris tries to keep many connections to the target web server open and hold
|       them open as long as possible.  It accomplishes this by opening connections to
|       the target web server and sending a partial request. By doing so, it starves
|       the http server's resources causing Denial Of Service.
|       
|     Disclosure date: 2009-09-17
|     References:
|       http://ha.ckers.org/slowloris/
|_      https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2007-6750
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.

Read data files from: /usr/bin/../share/nmap
# Nmap done at Thu Mar 17 19:24:13 2022 -- 1 IP address (1 host up) scanned in 322.08 seconds
