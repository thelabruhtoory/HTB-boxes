```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 80,2222 -oN "/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_full_tcp_nmap.txt" -oX "/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/xml/_full_tcp_nmap.xml" 10.10.10.56
```

[/HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_full_tcp_nmap.txt](file:///HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_full_tcp_nmap.txt):

```
# Nmap 7.92 scan initiated Wed Mar 16 04:37:21 2022 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 80,2222 -oN /HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/_full_tcp_nmap.txt -oX /HTB-boxes/shocker/misc-tools/autorecon/10.10.10.56/scans/xml/_full_tcp_nmap.xml 10.10.10.56
Nmap scan report for shocker.htb (10.10.10.56)
Host is up, received user-set (0.14s latency).
Scanned at 2022-03-16 04:37:21 EDT for 9s

PORT     STATE    SERVICE      REASON      VERSION
80/tcp   filtered http         no-response
2222/tcp filtered EtherNetIP-1 no-response
Too many fingerprints match this host to give specific OS details
TCP/IP fingerprint:
SCAN(V=7.92%E=4%D=3/16%OT=%CT=%CU=%PV=Y%DS=2%DC=T%G=N%TM=6231A1CA%P=x86_64-pc-linux-gnu)
U1(R=N)
IE(R=N)

Network Distance: 2 hops

TRACEROUTE (using proto 1/icmp)
HOP RTT       ADDRESS
1   141.35 ms 10.10.14.1
2   143.78 ms shocker.htb (10.10.10.56)

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Wed Mar 16 04:37:30 2022 -- 1 IP address (1 host up) scanned in 9.31 seconds

```
