### cgi-bin

Command:

```bash
gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/shocker/enum/web/gob_files_priority.md
```

Output:

```bash

...

/cgi-bin/             (Status: 403) [Size: 294]

...

```

![[found-cgi-bin-dir.png]]



able to download user.sh

![[download user.sh.png]]


Download the vuln check tool

```bash
wget https://raw.githubusercontent.com/nccgroup/shocker/master/shocker.py
```


