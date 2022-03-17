```bash
nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 80,2222 -oN "/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_custom_ports_udp_nmap.txt" -oX "/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/xml/_custom_ports_udp_nmap.xml" 10.10.10.56
```

[/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_custom_ports_udp_nmap.txt](file:///HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_custom_ports_udp_nmap.txt):

```
# Nmap 7.92 scan initiated Wed Mar 16 04:37:21 2022 as: nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 80,2222 -oN /HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_custom_ports_udp_nmap.txt -oX /HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/xml/_custom_ports_udp_nmap.xml 10.10.10.56
adjust_timeouts2: packet supposedly had rtt of -94739 microseconds.  Ignoring time.
adjust_timeouts2: packet supposedly had rtt of -94739 microseconds.  Ignoring time.
Nmap scan report for shocker.htb (10.10.10.56)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-16 04:37:21 EDT for 120s

PORT     STATE         SERVICE      REASON      VERSION
80/udp   open|filtered http         no-response
2222/udp open|filtered msantipiracy no-response
Too many fingerprints match this host to give specific OS details
TCP/IP fingerprint:
SCAN(V=7.92%E=4%D=3/16%OT=%CT=%CU=38217%PV=Y%DS=2%DC=T%G=N%TM=6231A239%P=x86_64-pc-linux-gnu)
SEQ(CI=I%II=I)
T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)
T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=N%T=40%CD=S)

Network Distance: 2 hops

TRACEROUTE (using proto 1/icmp)
HOP RTT       ADDRESS
1   122.79 ms 10.10.14.1
2   124.66 ms shocker.htb (10.10.10.56)

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Wed Mar 16 04:39:21 2022 -- 1 IP address (1 host up) scanned in 120.32 seconds

```
