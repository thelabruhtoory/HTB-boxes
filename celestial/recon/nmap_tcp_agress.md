# Nmap 7.92 scan initiated Tue May  3 17:24:35 2022 as: nmap -Pn -vvv -p- -A -oN /HTB-boxes/celestial/recon/nmap_tcp_agress.md 10.10.10.85
Nmap scan report for celestial.htb (10.10.10.85)
Host is up, received user-set (0.20s latency).
Scanned at 2022-05-03 17:24:35 EDT for 4313s
Not shown: 65464 closed tcp ports (conn-refused)
PORT      STATE    SERVICE        REASON      VERSION
178/tcp   filtered nextstep       no-response
684/tcp   filtered corba-iiop-ssl no-response
790/tcp   filtered unknown        no-response
943/tcp   filtered unknown        no-response
1460/tcp  filtered proshare2      no-response
1776/tcp  filtered femis          no-response
1783/tcp  filtered unknown        no-response
1954/tcp  filtered abr-api        no-response
2001/tcp  filtered dc             no-response
3000/tcp  open     http           syn-ack     Node.js Express framework
|_http-title: Site doesn't have a title (text/html; charset=utf-8).
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
3585/tcp  filtered emprise-lls    no-response
5024/tcp  filtered scpi-telnet    no-response
5675/tcp  filtered v5ua           no-response
5919/tcp  filtered unknown        no-response
6793/tcp  filtered unknown        no-response
7646/tcp  filtered unknown        no-response
7808/tcp  filtered unknown        no-response
11398/tcp filtered unknown        no-response
13744/tcp filtered unknown        no-response
14854/tcp filtered unknown        no-response
15073/tcp filtered unknown        no-response
16715/tcp filtered unknown        no-response
17371/tcp filtered unknown        no-response
18767/tcp filtered unknown        no-response
19727/tcp filtered unknown        no-response
20315/tcp filtered unknown        no-response
21381/tcp filtered unknown        no-response
21828/tcp filtered unknown        no-response
21912/tcp filtered unknown        no-response
21987/tcp filtered unknown        no-response
23683/tcp filtered unknown        no-response
24258/tcp filtered unknown        no-response
25331/tcp filtered unknown        no-response
25743/tcp filtered unknown        no-response
27748/tcp filtered unknown        no-response
29657/tcp filtered unknown        no-response
31962/tcp filtered unknown        no-response
32477/tcp filtered unknown        no-response
32703/tcp filtered unknown        no-response
34050/tcp filtered unknown        no-response
37844/tcp filtered unknown        no-response
37876/tcp filtered unknown        no-response
39100/tcp filtered unknown        no-response
39353/tcp filtered unknown        no-response
39909/tcp filtered unknown        no-response
40171/tcp filtered unknown        no-response
41382/tcp filtered unknown        no-response
41532/tcp filtered unknown        no-response
42332/tcp filtered unknown        no-response
43777/tcp filtered unknown        no-response
43797/tcp filtered unknown        no-response
44225/tcp filtered unknown        no-response
45340/tcp filtered unknown        no-response
46096/tcp filtered unknown        no-response
49172/tcp filtered unknown        no-response
50015/tcp filtered unknown        no-response
50184/tcp filtered unknown        no-response
51039/tcp filtered unknown        no-response
53373/tcp filtered unknown        no-response
54497/tcp filtered unknown        no-response
55213/tcp filtered unknown        no-response
55312/tcp filtered unknown        no-response
55834/tcp filtered unknown        no-response
56786/tcp filtered unknown        no-response
58040/tcp filtered unknown        no-response
58317/tcp filtered unknown        no-response
60083/tcp filtered unknown        no-response
60697/tcp filtered unknown        no-response
60932/tcp filtered unknown        no-response
63080/tcp filtered unknown        no-response
64031/tcp filtered unknown        no-response

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue May  3 18:36:28 2022 -- 1 IP address (1 host up) scanned in 4312.95 seconds
