# Nmap 7.92 scan initiated Tue May  3 00:51:06 2022 as: nmap -vvv -Pn -sU -p 80,22 -sC -sV -oN /HTB-boxes/haircut/recon/nmap_all_udp.md 10.10.10.24
Nmap scan report for haircut.htb (10.10.10.24)
Host is up, received user-set (0.17s latency).
Scanned at 2022-05-03 00:51:06 EDT for 0s

PORT   STATE  SERVICE REASON              VERSION
22/udp closed ssh     port-unreach ttl 63
80/udp closed http    port-unreach ttl 63

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue May  3 00:51:06 2022 -- 1 IP address (1 host up) scanned in 0.67 seconds
