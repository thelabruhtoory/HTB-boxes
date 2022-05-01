WARNING: Duplicate port number(s) specified.  Are you alert enough to be using Nmap?  Have some coffee or Jolt(tm).
# Nmap 7.92 scan initiated Sat Mar 19 14:05:17 2022 as: nmap -vvv -Pn -p 80,53,22,53 --script vuln -oN /HTB-boxes/Cronos/recon/nmap_all_vuln.md 10.10.10.13
Nmap scan report for cronos.htb (10.10.10.13)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-19 14:05:27 EDT for 312s

PORT   STATE SERVICE REASON
22/tcp open  ssh     syn-ack
53/tcp open  domain  syn-ack
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
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2007-6750
|_      http://ha.ckers.org/slowloris/
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
| http-enum: 
|   /robots.txt: Robots file
|   /css/: Potentially interesting directory w/ listing on 'apache/2.4.18 (ubuntu)'
|_  /js/: Potentially interesting directory w/ listing on 'apache/2.4.18 (ubuntu)'
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-csrf: Couldn't find any CSRF vulnerabilities.

Read data files from: /usr/bin/../share/nmap
# Nmap done at Sat Mar 19 14:10:39 2022 -- 1 IP address (1 host up) scanned in 322.27 seconds
