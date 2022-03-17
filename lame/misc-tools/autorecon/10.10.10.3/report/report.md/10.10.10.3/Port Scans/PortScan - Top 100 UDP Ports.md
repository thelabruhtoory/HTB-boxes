```bash
nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 21,22,139,445,3632 -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_custom_ports_udp_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/xml/_custom_ports_udp_nmap.xml" 10.10.10.3
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_custom_ports_udp_nmap.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_custom_ports_udp_nmap.txt):

```
# Nmap 7.92 scan initiated Tue Mar 15 21:43:39 2022 as: nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 21,22,139,445,3632 -oN /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_custom_ports_udp_nmap.txt -oX /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/xml/_custom_ports_udp_nmap.xml 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.28s latency).
Scanned at 2022-03-15 21:43:40 EDT for 126s

PORT     STATE         SERVICE      REASON              VERSION
21/udp   open|filtered ftp          no-response
22/udp   closed        ssh          port-unreach ttl 63
139/udp  closed        netbios-ssn  port-unreach ttl 63
445/udp  closed        microsoft-ds port-unreach ttl 63
3632/udp closed        distcc       port-unreach ttl 63
Too many fingerprints match this host to give specific OS details
TCP/IP fingerprint:
SCAN(V=7.92%E=4%D=3/15%OT=%CT=%CU=22%PV=Y%DS=2%DC=T%G=N%TM=6231414A%P=x86_64-pc-linux-gnu)
SEQ(II=I)
U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=N%T=40%CD=S)

Network Distance: 2 hops

TRACEROUTE (using port 445/udp)
HOP RTT       ADDRESS
1   131.97 ms 10.10.14.1
2   435.62 ms 10.10.10.3

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Mar 15 21:45:46 2022 -- 1 IP address (1 host up) scanned in 126.34 seconds

```
