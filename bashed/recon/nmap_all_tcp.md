# Nmap 7.92 scan initiated Wed Mar 16 22:46:25 2022 as: nmap -vvv -Pn -p 80 -sC -sV -oN /HTB-boxes/bashed/recon/nmap_all_tcp.md 10.10.10.68
Nmap scan report for bashed.htb (10.10.10.68)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-16 22:46:25 EDT for 9s

PORT   STATE SERVICE REASON  VERSION
80/tcp open  http    syn-ack Apache httpd 2.4.18 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-favicon: Unknown favicon MD5: 6AA5034A553DFA77C3B2C7B4C26CF870
|_http-title: Arrexel's Development Site
|_http-server-header: Apache/2.4.18 (Ubuntu)

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Wed Mar 16 22:46:34 2022 -- 1 IP address (1 host up) scanned in 9.71 seconds
