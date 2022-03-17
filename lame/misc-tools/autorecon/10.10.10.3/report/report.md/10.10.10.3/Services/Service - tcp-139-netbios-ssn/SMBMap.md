```bash
smbmap -H 10.10.10.3 -P 139 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-share-permissions.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-share-permissions.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
```bash
smbmap -u null -p "" -H 10.10.10.3 -P 139 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-share-permissions.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-share-permissions.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
```bash
smbmap -H 10.10.10.3 -P 139 -R 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-list-contents.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-list-contents.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
```bash
smbmap -u null -p "" -H 10.10.10.3 -P 139 -R 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-list-contents.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-list-contents.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
```bash
smbmap -H 10.10.10.3 -P 139 -x "ipconfig /all" 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-execute-command.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-execute-command.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
```bash
smbmap -u null -p "" -H 10.10.10.3 -P 139 -x "ipconfig /all" 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-execute-command.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbmap-execute-command.txt):

```
[!] RPC Authentication error occurred
[!] Authentication error on 10.10.10.3


```
