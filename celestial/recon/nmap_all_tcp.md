# Nmap 7.92 scan initiated Tue May  3 17:23:56 2022 as: nmap -vvv -Pn -p 3000 -sC -sV -oN /HTB-boxes/celestial/recon/nmap_all_tcp.md 10.10.10.85
Nmap scan report for celestial.htb (10.10.10.85)
Host is up, received user-set (0.13s latency).
Scanned at 2022-05-03 17:23:56 EDT for 15s

PORT     STATE SERVICE REASON  VERSION
3000/tcp open  http    syn-ack Node.js Express framework
|_http-title: Site doesn't have a title (text/html; charset=utf-8).
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue May  3 17:24:11 2022 -- 1 IP address (1 host up) scanned in 15.09 seconds
