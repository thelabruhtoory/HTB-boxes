```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 22,80,1337 -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_full_tcp_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_full_tcp_nmap.xml" 10.10.11.125
```

[/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_full_tcp_nmap.txt](file:///HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_full_tcp_nmap.txt):

```
# Nmap 7.92 scan initiated Sun Mar 13 01:26:26 2022 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 22,80,1337 -oN /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_full_tcp_nmap.txt -oX /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_full_tcp_nmap.xml 10.10.11.125
Nmap scan report for 10.10.11.125
Host is up, received user-set (0.14s latency).
Scanned at 2022-03-13 01:26:27 EST for 28s

PORT     STATE SERVICE REASON         VERSION
22/tcp   open  ssh     syn-ack ttl 63 OpenSSH 8.2p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   3072 b4:de:43:38:46:57:db:4c:21:3b:69:f3:db:3c:62:88 (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDqz2EAb2SBSzEIxcu+9dzgUZzDJGdCFWjwuxjhwtpq3sGiUQ1jgwf7h5BE+AlYhSX0oqoOLPKA/QHLxvJ9sYz0ijBL7aEJU8tYHchYMCMu0e8a71p3UGirTjn2tBVe3RSCo/XRQOM/ztrBzlqlKHcqMpttqJHphVA0/1dP7uoLCJlAOOWnW0K311DXkxfOiKRc2izbgfgimMDR4T1C17/oh9355TBgGGg2F7AooUpdtsahsiFItCRkvVB1G7DQiGqRTWsFaKBkHPVMQFaLEm5DK9H7PRwE+UYCah/Wp95NkwWj3u3H93p4V2y0Y6kdjF/L+BRmB44XZXm2Vu7BN0ouuT1SP3zu8YUe3FHshFIml7Ac/8zL1twLpnQ9Hv8KXnNKPoHgrU+sh35cd0JbCqyPFG5yziL8smr7Q4z9/XeATKzL4bcjG87sGtZMtB8alQS7yFA6wmqyWqLFQ4rpi2S0CoslyQnighQSwNaWuBYXvOLi6AsgckJLS44L8LxU4J8=
|   256 aa:c9:fc:21:0f:3e:f4:ec:6b:35:70:26:22:53:ef:66 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIuoNkiwwo7nM8ZE767bKSHJh+RbMsbItjTbVvKK4xKMfZFHzroaLEe9a2/P1D9h2M6khvPI74azqcqnI8SUJAk=
|   256 d2:8b:e4:ec:07:61:aa:ca:f8:ec:1c:f8:8c:c1:f6:e1 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB7eoJSCw4DyNNaFftGoFcX4Ttpwf+RPo0ydNk7yfqca
80/tcp   open  http    syn-ack ttl 63 Apache httpd 2.4.41 ((Ubuntu))
|_http-server-header: Apache/2.4.41 (Ubuntu)
|_http-generator: WordPress 5.8.1
|_http-title: Backdoor &#8211; Real-Life
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
1337/tcp open  waste?  syn-ack ttl 63
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
OS fingerprint not ideal because: Missing a closed TCP port so results incomplete
Aggressive OS guesses: Linux 4.15 - 5.6 (95%), Linux 5.3 - 5.4 (95%), Linux 2.6.32 (95%), Linux 5.0 - 5.3 (95%), Linux 3.1 (95%), Linux 3.2 (95%), AXIS 210A or 211 Network Camera (Linux 2.6.17) (94%), ASUS RT-N56U WAP (Linux 3.4) (93%), Linux 3.16 (93%), Linux 5.4 (93%)
No exact OS matches for host (test conditions non-ideal).
TCP/IP fingerprint:
SCAN(V=7.92%E=4%D=3/13%OT=22%CT=%CU=38096%PV=Y%DS=2%DC=T%G=N%TM=622D8EAF%P=x86_64-pc-linux-gnu)
SEQ(SP=100%GCD=1%ISR=109%TI=Z%CI=Z%II=I%TS=A)
OPS(O1=M505ST11NW7%O2=M505ST11NW7%O3=M505NNT11NW7%O4=M505ST11NW7%O5=M505ST11NW7%O6=M505ST11)
WIN(W1=FE88%W2=FE88%W3=FE88%W4=FE88%W5=FE88%W6=FE88)
ECN(R=Y%DF=Y%T=40%W=FAF0%O=M505NNSNW7%CC=Y%Q=)
T1(R=Y%DF=Y%T=40%S=O%A=S+%F=AS%RD=0%Q=)
T2(R=N)
T3(R=N)
T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)
T5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
T6(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)
T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)
U1(R=Y%DF=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)
IE(R=Y%DFI=N%T=40%CD=S)

Uptime guess: 38.868 days (since Wed Feb  2 04:36:32 2022)
Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=256 (Good luck!)
IP ID Sequence Generation: All zeros
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

TRACEROUTE (using port 80/tcp)
HOP RTT       ADDRESS
1   137.88 ms 10.10.14.1
2   138.16 ms 10.10.11.125

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Mar 13 01:26:55 2022 -- 1 IP address (1 host up) scanned in 28.86 seconds

```
