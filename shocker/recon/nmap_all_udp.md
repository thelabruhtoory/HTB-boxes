# Nmap 7.92 scan initiated Wed Mar 16 03:40:59 2022 as: nmap -vvv -Pn -sU -p 80,2222 -sC -sV -oN /HTB-boxes/shocker/recon/nmap_all_udp.md 10.10.10.56
Nmap scan report for 10.10.10.56
Host is up, received user-set (0.13s latency).
Scanned at 2022-03-16 03:40:59 EDT for 1s

PORT     STATE  SERVICE      REASON              VERSION
80/udp   closed http         port-unreach ttl 63
2222/udp closed msantipiracy port-unreach ttl 63

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Wed Mar 16 03:41:00 2022 -- 1 IP address (1 host up) scanned in 0.64 seconds
