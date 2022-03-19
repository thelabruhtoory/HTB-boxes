# Nmap 7.92 scan initiated Fri Mar 18 17:56:00 2022 as: nmap -vvv -Pn -sU -p 22,25,80,110,111,143,443,878,993,995,3306,4190,4445,4559,5038,10000 -sC -sV -oN /HTB-boxes/beep/recon/nmap_all_udp.md 10.10.10.7
Nmap scan report for beep.htb (10.10.10.7)
Host is up, received user-set (0.15s latency).
Scanned at 2022-03-18 17:56:01 EDT for 85s

PORT      STATE         SERVICE   REASON              VERSION
22/udp    closed        ssh       port-unreach ttl 63
25/udp    open|filtered smtp      no-response
80/udp    closed        http      port-unreach ttl 63
110/udp   open|filtered pop3      no-response
111/udp   open          rpcbind   udp-response ttl 63 2 (RPC #100000)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2            111/tcp   rpcbind
|   100000  2            111/udp   rpcbind
|   100024  1            875/udp   status
|_  100024  1            878/tcp   status
143/udp   closed        imap      port-unreach ttl 63
443/udp   open|filtered https     no-response
878/udp   closed        unknown   port-unreach ttl 63
993/udp   open|filtered imaps     no-response
995/udp   closed        pop3s     port-unreach ttl 63
3306/udp  closed        mysql     port-unreach ttl 63
4190/udp  open|filtered unknown   no-response
4445/udp  open|filtered upnotifyp no-response
4559/udp  closed        hylafax   port-unreach ttl 63
5038/udp  closed        unknown   port-unreach ttl 63
10000/udp open          webmin    udp-response ttl 63 (https on TCP port 10000)

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Mar 18 17:57:26 2022 -- 1 IP address (1 host up) scanned in 85.93 seconds
