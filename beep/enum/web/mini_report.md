### Port 10000

![[webmin_login.png]]

### Port 443

![[elastix_login.png]]

```bash
gobuster dir -u https://beep.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/beep/enum/web/gob_dir.md -k
```

```txt
/images               (Status: 301) [Size: 306] [--> https://beep.htb/images/]
/help                 (Status: 301) [Size: 304] [--> https://beep.htb/help/]
/themes               (Status: 301) [Size: 306] [--> https://beep.htb/themes/]
/modules              (Status: 301) [Size: 307] [--> https://beep.htb/modules/]
/mail                 (Status: 301) [Size: 304] [--> https://beep.htb/mail/]
/admin                (Status: 301) [Size: 305] [--> https://beep.htb/admin/]
/static               (Status: 301) [Size: 306] [--> https://beep.htb/static/]
/lang                 (Status: 301) [Size: 304] [--> https://beep.htb/lang/]
```

```txt
https://beep.htb/admin/
```

![[different_login_panel.png]]

```txt
https://beep.htb/recordings/index.php
```

![[recordings_login.png]]

```
https://beep.htb/admin/config.php
```

![[found_freebpx.png]]

```txt
https://beep.htb/vtigercrm/
```

![[found_vtiger.png]]

We can also see the version number on the page:

```txt
vtiger CRM 5.1.0
```