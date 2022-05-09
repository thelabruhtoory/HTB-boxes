### HTTP

Using directory brute forcing tools, we find donwloadable content from the website on port 80.

```txt
==> DIRECTORY: http://10.10.10.37:80/plugins/
```

![[plugins.png]]


### jadx-gui

We can download both java applications and take a look at the source code by reverse-engineering them. In order to reverse-engineer the applications, we need to use a java decompiler.

Run jadx-gui, and open the *BlockyCore.jar* file.

![[run_jadx-gui.png]]

Open the *BlockyCore* class under *myfirstplugin*

![[rev_class.png]]

Looking at the decompiled code, we can see hardcoded, plaintext credentials:

![[plaintext_credentials.png]]

```txt
sql_user: root
slq_pass: 8YsqfCTnvxAUeduzjNSXe22
```

### phpmyadmin 

Looking back at directory brute forcing logs, we can see another directory has been found.

```txt
==> DIRECTORY: http://10.10.10.37:80/phpmyadmin/ 
```

We can see a login for *phpmyadmin*

![[phpmyadmin_login.png]]

Using the newly discovered credentials, we can login to the admin dashboard.

![[phpmyadmin_login_success.png]]

![[admin_dashboard.png]]

With this, we can start looking through various databases and tables for further enumeration.

Looking at the *wordpress* database, under the *wp_users* table, we can see an entry for a user.

![[found_user.png]]

### SSH

We are able to use the discovered sql password, 
![[notch_login.png]]


![[user.txt.png]]

```txt
59fee0977fb60b8a0bc6e41e751f3cd5
```

### Privesc

We can see that the *notch* user can run all commands with sudo privileges.

![[sudo privileges.png]]

Knowing the password, we can easily escalate to root by running the following command:

```bash
sudo su
```

![[root.txt.png]]

```txt
0a9694a5b4d272c694679f7860f1cd5f
```



/etc/passwd

```txt
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
systemd-timesync:x:100:102:systemd Time Synchronization,,,:/run/systemd:/bin/false
systemd-network:x:101:103:systemd Network Management,,,:/run/systemd/netif:/bin/false
systemd-resolve:x:102:104:systemd Resolver,,,:/run/systemd/resolve:/bin/false
systemd-bus-proxy:x:103:105:systemd Bus Proxy,,,:/run/systemd:/bin/false
syslog:x:104:108::/home/syslog:/bin/false
_apt:x:105:65534::/nonexistent:/bin/false
lxd:x:106:65534::/var/lib/lxd/:/bin/false
messagebus:x:107:111::/var/run/dbus:/bin/false
uuidd:x:108:112::/run/uuidd:/bin/false
dnsmasq:x:109:65534:dnsmasq,,,:/var/lib/misc:/bin/false
notch:x:1000:1000:notch,,,:/home/notch:/bin/bash
mysql:x:110:117:MySQL Server,,,:/nonexistent:/bin/false
proftpd:x:111:65534::/run/proftpd:/bin/false
ftp:x:112:65534::/srv/ftp:/bin/false
sshd:x:113:65534::/var/run/sshd:/usr/sbin/nologin
```

/etc/shadow

```txt
root:!:17349:0:99999:7:::
daemon:*:17212:0:99999:7:::
bin:*:17212:0:99999:7:::
sys:*:17212:0:99999:7:::
sync:*:17212:0:99999:7:::
games:*:17212:0:99999:7:::
man:*:17212:0:99999:7:::
lp:*:17212:0:99999:7:::
mail:*:17212:0:99999:7:::
news:*:17212:0:99999:7:::
uucp:*:17212:0:99999:7:::
proxy:*:17212:0:99999:7:::
www-data:*:17212:0:99999:7:::
backup:*:17212:0:99999:7:::
list:*:17212:0:99999:7:::
irc:*:17212:0:99999:7:::
gnats:*:17212:0:99999:7:::
nobody:*:17212:0:99999:7:::
systemd-timesync:*:17212:0:99999:7:::
systemd-network:*:17212:0:99999:7:::
systemd-resolve:*:17212:0:99999:7:::
systemd-bus-proxy:*:17212:0:99999:7:::
syslog:*:17212:0:99999:7:::
_apt:*:17212:0:99999:7:::
lxd:*:17349:0:99999:7:::
messagebus:*:17349:0:99999:7:::
uuidd:*:17349:0:99999:7:::
dnsmasq:*:17349:0:99999:7:::
notch:$6$RdxVAN/.$DFugS5p/G9hTNY9htDWVGKte9n9r/nYYL.wVdAHfiHpnyN9dNftf5Nt.DkjrUs0PlYNcYZWhh0Vhl/5tl8WBG1:17349:0:99999:7:::
mysql:!:17349:0:99999:7:::
proftpd:!:17349:0:99999:7:::
ftp:*:17349:0:99999:7:::
sshd:*:17349:0:99999:7:::
```