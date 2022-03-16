### /etc/passwd

```bash
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/bin/sh
bin:x:2:2:bin:/bin:/bin/sh
sys:x:3:3:sys:/dev:/bin/sh
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/bin/sh
man:x:6:12:man:/var/cache/man:/bin/sh
lp:x:7:7:lp:/var/spool/lpd:/bin/sh
mail:x:8:8:mail:/var/mail:/bin/sh
news:x:9:9:news:/var/spool/news:/bin/sh
uucp:x:10:10:uucp:/var/spool/uucp:/bin/sh
proxy:x:13:13:proxy:/bin:/bin/sh
www-data:x:33:33:www-data:/var/www:/bin/sh
backup:x:34:34:backup:/var/backups:/bin/sh
list:x:38:38:Mailing List Manager:/var/list:/bin/sh
irc:x:39:39:ircd:/var/run/ircd:/bin/sh
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
libuuid:x:100:101::/var/lib/libuuid:/bin/sh
dhcp:x:101:102::/nonexistent:/bin/false
syslog:x:102:103::/home/syslog:/bin/false
klog:x:103:104::/home/klog:/bin/false
sshd:x:104:65534::/var/run/sshd:/usr/sbin/nologin
bind:x:105:113::/var/cache/bind:/bin/false
postfix:x:106:115::/var/spool/postfix:/bin/false
ftp:x:107:65534::/home/ftp:/bin/false
postgres:x:108:117:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
mysql:x:109:118:MySQL Server,,,:/var/lib/mysql:/bin/false
tomcat55:x:110:65534::/usr/share/tomcat5.5:/bin/false
distccd:x:111:65534::/:/bin/false
service:x:1002:1002:,,,:/home/service:/bin/bash
telnetd:x:112:120::/nonexistent:/bin/false
proftpd:x:113:65534::/var/run/proftpd:/bin/false
statd:x:114:65534::/var/lib/nfs:/bin/false
snmp:x:115:65534::/var/lib/snmp:/bin/false
makis:x:1003:1003::/home/makis:/bin/sh
```


```
makis
```

```

...

[+] Possible sudo pwnage!
file

...

[-] Accounts that have recently used sudo:
/home/makis/.sudo_as_admin_successful

...

[+] We can read root's home directory!
total 80K
drwxr-xr-x 13 root root 4.0K Mar 15 11:22 .
drwxr-xr-x 21 root root 4.0K Oct 31  2020 ..
-rw-------  1 root root  373 Mar 15 11:22 .Xauthority
lrwxrwxrwx  1 root root    9 May 14  2012 .bash_history -> /dev/null
-rw-r--r--  1 root root 2.2K Oct 20  2007 .bashrc
drwx------  3 root root 4.0K May 20  2012 .config
drwx------  2 root root 4.0K May 20  2012 .filezilla
drwxr-xr-x  5 root root 4.0K Mar 15 11:22 .fluxbox
drwx------  2 root root 4.0K May 20  2012 .gconf
drwx------  2 root root 4.0K May 20  2012 .gconfd
drwxr-xr-x  2 root root 4.0K May 20  2012 .gstreamer-0.10
drwx------  4 root root 4.0K May 20  2012 .mozilla
-rw-r--r--  1 root root  141 Oct 20  2007 .profile
drwx------  5 root root 4.0K May 20  2012 .purple
-rwx------  1 root root    4 May 20  2012 .rhosts
drwxr-xr-x  2 root root 4.0K May 20  2012 .ssh
drwx------  2 root root 4.0K Mar 15 11:22 .vnc
drwxr-xr-x  2 root root 4.0K May 20  2012 Desktop
-rwx------  1 root root  401 May 20  2012 reset_logs.sh
-rw-------  1 root root   33 Mar 15 11:22 root.txt
-rw-r--r--  1 root root  118 Mar 15 11:22 vnc.log

...


[-] Sudo version:
Sudo version 1.6.9p10

[+] Possibly interesting SUID files:
-rwsr-xr-- 1 root dhcp 2960 Apr  2  2008 /lib/dhcp3-client/call-dhclient-script
-rwsr-xr-x 1 root root 780676 Apr  8  2008 /usr/bin/nmap


[1] american-sign-language
      CVE-2010-4347
      Source: http://www.securityfocus.com/bid/45408
  [2] can_bcm
      CVE-2010-2959
      Source: http://www.exploit-db.com/exploits/14814
  [3] dirty_cow
      CVE-2016-5195
      Source: http://www.exploit-db.com/exploits/40616
  [4] do_pages_move
      Alt: sieve       CVE-2010-0415
      Source: Spenders Enlightenment
  [5] exploit_x
      CVE-2018-14665
      Source: http://www.exploit-db.com/exploits/45697
  [6] half_nelson1
      Alt: econet       CVE-2010-3848
      Source: http://www.exploit-db.com/exploits/17787
  [7] half_nelson2
      Alt: econet       CVE-2010-3850
      Source: http://www.exploit-db.com/exploits/17787
  [8] half_nelson3
      Alt: econet       CVE-2010-4073
      Source: http://www.exploit-db.com/exploits/17787
  [9] msr
      CVE-2013-0268
      Source: http://www.exploit-db.com/exploits/27297
  [10] pipe.c_32bit
      CVE-2009-3547
      Source: http://www.securityfocus.com/data/vulnerabilities/exploits/36901-1.c
  [11] pktcdvd
      CVE-2010-3437
      Source: http://www.exploit-db.com/exploits/15150
  [12] reiserfs
      CVE-2010-1146
      Source: http://www.exploit-db.com/exploits/12130
  [13] sock_sendpage
      Alt: wunderbar_emporium       CVE-2009-2692
      Source: http://www.exploit-db.com/exploits/9435
  [14] sock_sendpage2
      Alt: proto_ops       CVE-2009-2692
      Source: http://www.exploit-db.com/exploits/9436
  [15] video4linux
      CVE-2010-3081
      Source: http://www.exploit-db.com/exploits/15024
  [16] vmsplice1
      Alt: jessica biel       CVE-2008-0600
      Source: http://www.exploit-db.com/exploits/5092
  [17] vmsplice2
      Alt: diane_lane       CVE-2008-0600
      Source: http://www.exploit-db.com/exploits/5093
	  
...

gdb was found in PATH

...

passwd file: /etc/pam.d/passwd
passwd file: /etc/passwd
passwd file: /usr/share/linda/overrides/passwd
passwd file: /usr/share/lintian/overrides/passwd


...

/usr/bin/screen  --->  GNU_Screen_4.5.0

/etc/at.deny

...

You own the SUID file: /usr/bin/at

...

```

