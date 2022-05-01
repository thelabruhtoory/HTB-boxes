WARNING: Duplicate port number(s) specified.  Are you alert enough to be using Nmap?  Have some coffee or Jolt(tm).
# Nmap 7.92 scan initiated Sat Mar 19 14:05:10 2022 as: nmap -vvv -Pn -sU -p 80,53,22,53 -sC -sV -oN /HTB-boxes/Cronos/recon/nmap_all_udp.md 10.10.10.13
Nmap scan report for cronos.htb (10.10.10.13)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-19 14:05:11 EDT for 7s

PORT   STATE  SERVICE REASON              VERSION
22/udp closed ssh     port-unreach ttl 63
53/udp open   domain  udp-response ttl 63 ISC BIND 9.10.3-P4 (Ubuntu Linux)
| dns-nsid: 
|_  bind.version: 9.10.3-P4-Ubuntu
80/udp closed http    port-unreach ttl 63
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sat Mar 19 14:05:18 2022 -- 1 IP address (1 host up) scanned in 7.62 seconds
