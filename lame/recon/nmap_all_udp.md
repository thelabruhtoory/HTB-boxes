# Nmap 7.92 scan initiated Tue Mar 15 21:44:25 2022 as: nmap -vvv -Pn -sU -p 21,22,139,445,3632 -sC -sV -oN /HTB-boxes/lame/recon/nmap_all_udp.md 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.13s latency).
Scanned at 2022-03-15 21:44:26 EDT for 114s

PORT     STATE         SERVICE      REASON              VERSION
21/udp   open|filtered ftp          no-response
22/udp   closed        ssh          port-unreach ttl 63
139/udp  closed        netbios-ssn  port-unreach ttl 63
445/udp  closed        microsoft-ds port-unreach ttl 63
3632/udp closed        distcc       port-unreach ttl 63

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Mar 15 21:46:20 2022 -- 1 IP address (1 host up) scanned in 114.84 seconds
