# Nmap 7.92 scan initiated Thu Mar 17 19:14:27 2022 as: nmap -Pn -vvv -p- -A -oN /HTB-boxes/nibbles/recon/nmap_tcp_agress.md 10.10.10.75
Nmap scan report for nibbles.htb (10.10.10.75)
Host is up, received user-set (0.12s latency).
Scanned at 2022-03-17 19:14:28 EDT for 3495s
Not shown: 65469 closed tcp ports (conn-refused)
PORT      STATE    SERVICE        REASON      VERSION
22/tcp    open     ssh            syn-ack     OpenSSH 7.2p2 Ubuntu 4ubuntu2.2 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 c4:f8:ad:e8:f8:04:77:de:cf:15:0d:63:0a:18:7e:49 (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD8ArTOHWzqhwcyAZWc2CmxfLmVVTwfLZf0zhCBREGCpS2WC3NhAKQ2zefCHCU8XTC8hY9ta5ocU+p7S52OGHlaG7HuA5Xlnihl1INNsMX7gpNcfQEYnyby+hjHWPLo4++fAyO/lB8NammyA13MzvJy8pxvB9gmCJhVPaFzG5yX6Ly8OIsvVDk+qVa5eLCIua1E7WGACUlmkEGljDvzOaBdogMQZ8TGBTqNZbShnFH1WsUxBtJNRtYfeeGjztKTQqqj4WD5atU8dqV/iwmTylpE7wdHZ+38ckuYL9dmUPLh4Li2ZgdY6XniVOBGthY5a2uJ2OFp2xe1WS9KvbYjJ/tH
|   256 22:8f:b1:97:bf:0f:17:08:fc:7e:2c:8f:e9:77:3a:48 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBPiFJd2F35NPKIQxKMHrgPzVzoNHOJtTtM+zlwVfxzvcXPFFuQrOL7X6Mi9YQF9QRVJpwtmV9KAtWltmk3qm4oc=
|   256 e6:ac:27:a3:b5:a9:f1:12:3c:34:a5:5d:5b:eb:3d:e9 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC/RjKhT/2YPlCgFQLx+gOXhC6W3A3raTzjlXQMT8Msk
80/tcp    open     http           syn-ack     Apache httpd 2.4.18 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Site doesn't have a title (text/html).
|_http-server-header: Apache/2.4.18 (Ubuntu)
1132/tcp  filtered kvm-via-ip     no-response
1617/tcp  filtered nimrod-agent   no-response
1727/tcp  filtered winddx         no-response
1791/tcp  filtered ea1            no-response
3083/tcp  filtered tl1-telnet     no-response
3188/tcp  filtered brcm-comm-port no-response
3926/tcp  filtered winport        no-response
5444/tcp  filtered unknown        no-response
5632/tcp  filtered pcanywherestat no-response
6510/tcp  filtered mcer-port      no-response
7042/tcp  filtered unknown        no-response
9080/tcp  filtered glrpc          no-response
14478/tcp filtered unknown        no-response
16353/tcp filtered unknown        no-response
17505/tcp filtered unknown        no-response
18426/tcp filtered unknown        no-response
18434/tcp filtered unknown        no-response
18515/tcp filtered unknown        no-response
19644/tcp filtered unknown        no-response
19771/tcp filtered unknown        no-response
22118/tcp filtered unknown        no-response
22744/tcp filtered unknown        no-response
24177/tcp filtered unknown        no-response
25076/tcp filtered unknown        no-response
26648/tcp filtered unknown        no-response
27709/tcp filtered unknown        no-response
28167/tcp filtered unknown        no-response
28207/tcp filtered unknown        no-response
29133/tcp filtered unknown        no-response
31534/tcp filtered unknown        no-response
32285/tcp filtered unknown        no-response
32484/tcp filtered unknown        no-response
32990/tcp filtered unknown        no-response
32992/tcp filtered unknown        no-response
33360/tcp filtered unknown        no-response
33974/tcp filtered unknown        no-response
37078/tcp filtered unknown        no-response
37477/tcp filtered unknown        no-response
38084/tcp filtered unknown        no-response
38189/tcp filtered unknown        no-response
40728/tcp filtered unknown        no-response
41906/tcp filtered unknown        no-response
41958/tcp filtered unknown        no-response
44520/tcp filtered unknown        no-response
45307/tcp filtered unknown        no-response
45450/tcp filtered unknown        no-response
47308/tcp filtered unknown        no-response
47577/tcp filtered unknown        no-response
49163/tcp filtered unknown        no-response
49436/tcp filtered unknown        no-response
49725/tcp filtered unknown        no-response
51599/tcp filtered unknown        no-response
51612/tcp filtered unknown        no-response
54159/tcp filtered unknown        no-response
54479/tcp filtered unknown        no-response
54743/tcp filtered unknown        no-response
55372/tcp filtered unknown        no-response
58270/tcp filtered unknown        no-response
58908/tcp filtered unknown        no-response
59052/tcp filtered unknown        no-response
59695/tcp filtered unknown        no-response
60251/tcp filtered unknown        no-response
64138/tcp filtered unknown        no-response
65355/tcp filtered unknown        no-response
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Mar 17 20:12:43 2022 -- 1 IP address (1 host up) scanned in 3496.18 seconds
