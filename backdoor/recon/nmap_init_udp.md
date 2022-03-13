# Nmap 7.92 scan initiated Sun Mar 13 01:27:13 2022 as: nmap -vvv -sU -p 22,80,1337 -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_init_udp.md 10.10.11.125
Nmap scan report for 10.10.11.125
Host is up, received reset ttl 63 (0.14s latency).
Scanned at 2022-03-13 01:27:14 EST for 0s

PORT     STATE  SERVICE        REASON              VERSION
22/udp   closed ssh            port-unreach ttl 63
80/udp   closed http           port-unreach ttl 63
1337/udp closed menandmice-dns port-unreach ttl 63

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Mar 13 01:27:14 2022 -- 1 IP address (1 host up) scanned in 0.84 seconds
