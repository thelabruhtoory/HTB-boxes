```bash
nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 22,80,1337 -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_custom_ports_udp_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_custom_ports_udp_nmap.xml" 10.10.11.125
```

[/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_custom_ports_udp_nmap.txt](file:///HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_custom_ports_udp_nmap.txt):

```
# Nmap 7.92 scan initiated Sun Mar 13 01:26:26 2022 as: nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 22,80,1337 -oN /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_custom_ports_udp_nmap.txt -oX /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_custom_ports_udp_nmap.xml 10.10.11.125
Nmap scan report for 10.10.11.125
Host is up, received user-set (0.15s latency).
Scanned at 2022-03-13 01:26:27 EST for 2s

PORT     STATE  SERVICE        REASON              VERSION
22/udp   closed ssh            port-unreach ttl 63
80/udp   closed http           port-unreach ttl 63
1337/udp closed menandmice-dns port-unreach ttl 63
Too many fingerprints match this host to give specific OS details
TCP/IP fingerprint:
SCAN(V=7.92%E=4%D=3/13%OT=%CT=%CU=22%PV=Y%DS=2%DC=T%G=N%TM=622D8E95%P=x86_64-pc-linux-gnu)
SEQ(CI=Z%II=I)
T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)
T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=N%T=40%CD=S)

Network Distance: 2 hops

TRACEROUTE (using port 22/udp)
HOP RTT       ADDRESS
1   205.65 ms 10.10.14.1
2   205.74 ms 10.10.11.125

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Mar 13 01:26:29 2022 -- 1 IP address (1 host up) scanned in 2.82 seconds

```
