# Nmap 7.92 scan initiated Sun Mar 13 01:27:23 2022 as: nmap -vvv -p- -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_tcp_all.md 10.10.11.125
Increasing send delay for 10.10.11.125 from 5 to 10 due to 11 out of 31 dropped probes since last increase.
Nmap scan report for 10.10.11.125
Host is up, received syn-ack (0.15s latency).
Scanned at 2022-03-13 01:27:24 EST for 12163s
Not shown: 65516 closed tcp ports (conn-refused)
PORT      STATE    SERVICE      REASON      VERSION
22/tcp    open     ssh          syn-ack     OpenSSH 8.2p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   256 aa:c9:fc:21:0f:3e:f4:ec:6b:35:70:26:22:53:ef:66 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIuoNkiwwo7nM8ZE767bKSHJh+RbMsbItjTbVvKK4xKMfZFHzroaLEe9a2/P1D9h2M6khvPI74azqcqnI8SUJAk=
|   256 d2:8b:e4:ec:07:61:aa:ca:f8:ec:1c:f8:8c:c1:f6:e1 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB7eoJSCw4DyNNaFftGoFcX4Ttpwf+RPo0ydNk7yfqca
80/tcp    open     http         syn-ack     Apache httpd 2.4.41 ((Ubuntu))
|_http-server-header: Apache/2.4.41 (Ubuntu)
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-generator: WordPress 5.8.1
|_http-title: Backdoor &#8211; Real-Life
1337/tcp  open     tcpwrapped   syn-ack
1434/tcp  filtered ms-sql-m     no-response
1996/tcp  filtered tr-rsrb-port no-response
2034/tcp  filtered scoremgr     no-response
8565/tcp  filtered unknown      no-response
17419/tcp filtered unknown      no-response
31176/tcp filtered unknown      no-response
32127/tcp filtered unknown      no-response
35609/tcp filtered unknown      no-response
44322/tcp filtered pmcdproxy    no-response
45148/tcp filtered unknown      no-response
51888/tcp filtered unknown      no-response
53553/tcp filtered unknown      no-response
57358/tcp filtered unknown      no-response
57654/tcp filtered unknown      no-response
63014/tcp filtered unknown      no-response
65051/tcp filtered unknown      no-response
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sun Mar 13 05:50:07 2022 -- 1 IP address (1 host up) scanned in 12164.11 seconds
