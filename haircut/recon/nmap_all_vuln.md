# Nmap 7.92 scan initiated Tue May  3 00:51:13 2022 as: nmap -vvv -Pn -p 80,22 --script vuln -oN /HTB-boxes/haircut/recon/nmap_all_vuln.md 10.10.10.24
Nmap scan report for haircut.htb (10.10.10.24)
Host is up, received user-set (0.33s latency).
Scanned at 2022-05-03 00:51:23 EDT for 308s

PORT   STATE SERVICE REASON
22/tcp open  ssh     syn-ack
80/tcp open  http    syn-ack
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
| http-vuln-cve2011-3192: 
|   VULNERABLE:
|   Apache byterange filter DoS
|     State: VULNERABLE
|     IDs:  CVE:CVE-2011-3192  BID:49303
|       The Apache web server is vulnerable to a denial of service attack when numerous
|       overlapping byte ranges are requested.
|     Disclosure date: 2011-08-19
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2011-3192
|       https://seclists.org/fulldisclosure/2011/Aug/175
|       https://www.tenable.com/plugins/nessus/55976
|_      https://www.securityfocus.com/bid/49303
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
| http-enum: 
|_  /test.html: Test page

Read data files from: /usr/bin/../share/nmap
# Nmap done at Tue May  3 00:56:31 2022 -- 1 IP address (1 host up) scanned in 318.62 seconds
