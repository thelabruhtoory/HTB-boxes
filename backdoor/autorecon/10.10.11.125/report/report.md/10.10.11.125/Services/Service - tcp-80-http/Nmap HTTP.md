```bash
nmap -vv --reason -Pn -T4 -sV -p 80 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/xml/tcp_80_http_nmap.xml" 10.10.11.125
```

[/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_nmap.txt](file:///HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_nmap.txt):

```
# Nmap 7.92 scan initiated Sun Mar 13 01:26:55 2022 as: nmap -vv --reason -Pn -T4 -sV -p 80 "--script=banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_nmap.txt -oX /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/xml/tcp_80_http_nmap.xml 10.10.11.125
Nmap scan report for 10.10.11.125
Host is up, received user-set (0.13s latency).
Scanned at 2022-03-13 01:26:56 EST for 44s

Bug in http-security-headers: no string output.
PORT   STATE SERVICE REASON         VERSION
80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.41 ((Ubuntu))
|_http-malware-host: Host appears to be clean
|_http-date: Sun, 13 Mar 2022 06:27:10 GMT; -2s from local time.
|_http-devframework: Wordpress detected. Found common traces on /
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
| http-useragent-tester: 
|   Status for browser useragent: 200
|   Allowed User Agents: 
|     Mozilla/5.0 (compatible; Nmap Scripting Engine; https://nmap.org/book/nse.html)
|     libwww
|     lwp-trivial
|     libcurl-agent/1.0
|     PHP/
|     Python-urllib/2.5
|     GT::WWW
|     Snoopy
|     MFC_Tear_Sample
|     HTTP::Lite
|     PHPCrawl
|     URI::Fetch
|     Zend_Http_Client
|     http client
|     PECL::HTTP
|     Wget/1.13.4 (linux-gnu)
|_    WWW-Mechanize/1.34
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-title: Backdoor &#8211; Real-Life
| http-wordpress-enum: 
| Search limited to top 100 themes/plugins
|   plugins
|     akismet
|   themes
|_    twentyseventeen 2.8
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
| http-wordpress-users: 
| Username found: admin
|_Search stopped at ID #25. Increase the upper limit if necessary with 'http-wordpress-users.limit'
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-generator: WordPress 5.8.1
|_http-referer-checker: Couldn't find any cross-domain scripts.
|_http-drupal-enum: Nothing found amongst the top 100 resources,use --script-args number=<number|all> for deeper analysis)
|_http-server-header: Apache/2.4.41 (Ubuntu)
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
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
| http-vhosts: 
|_128 names had status 200
|_http-errors: Couldn't find any error pages.
|_http-fetch: Please enter the complete path of the directory to save data in.
|_http-comments-displayer: Couldn't find any comments.
|_http-mobileversion-checker: No mobile version detected.
| http-sitemap-generator: 
|   Directory structure:
|   Longest directory structure:
|     Depth: 0
|     Dir: /
|   Total files found (by extension):
|_    
|_http-chrono: ERROR: Script execution failed (use -d to debug)
|_http-feed: Couldn't find any feeds.
| http-headers: 
|   Date: Sun, 13 Mar 2022 06:27:09 GMT
|   Server: Apache/2.4.41 (Ubuntu)
|   Link: <http://10.10.11.125/index.php/wp-json/>; rel="https://api.w.org/"
|   Link: <http://10.10.11.125/index.php/wp-json/wp/v2/pages/11>; rel="alternate"; type="application/json"
|   Link: <http://10.10.11.125/>; rel=shortlink
|   Connection: close
|   Content-Type: text/html; charset=UTF-8
|   
|_  (Request type: HEAD)
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
|_http-config-backup: ERROR: Script execution failed (use -d to debug)
| http-waf-detect: IDS/IPS/WAF detected:
|_10.10.11.125:80/?p4yl04d3=<script>alert(document.cookie)</script>

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Mar 13 01:27:40 2022 -- 1 IP address (1 host up) scanned in 44.92 seconds

```
