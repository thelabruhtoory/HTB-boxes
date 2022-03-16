### SMB Anon Connection

```bash
smbmap -H 10.10.10.3 | tee /HTB-boxes/lame/enum/smb/smbmap1.md
```

```bash
[+] IP: 10.10.10.3:445	Name: 10.10.10.3                                        
[-] Working on it...
                                
	Disk                                                  	Permissions	Comment
	----                                                  	-----------	-------
	print$                                            	NO ACCESS	Printer Drivers
	tmp                                               	READ, WRITE	oh noes!
	opt                                               	NO ACCESS	
	IPC$                                              	NO ACCESS	IPC Service (lame server (Samba 3.0.20-Debian))
	ADMIN$                                            	NO ACCESS	IPC Service (lame server (Samba 3.0.20-Debian))
```


```bash
smbclient -L 10.10.10.3
```

```bash
Anonymous login successful

	Sharename       Type      Comment
	---------       ----      -------
	print$          Disk      Printer Drivers
	tmp             Disk      oh noes!
	opt             Disk      
	IPC$            IPC       IPC Service (lame server (Samba 3.0.20-Debian))
	ADMIN$          IPC       IPC Service (lame server (Samba 3.0.20-Debian))
Reconnecting with SMB1 for workgroup listing.
Anonymous login successful

	Server               Comment
	---------            -------

	Workgroup            Master
	---------            -------
	WORKGROUP            LAME
```


```bash
smbclient \\\\10.10.10.3\\tmp
```

```bash
Enter WORKGROUP\kali's password: 
Anonymous login successful
Try "help" to get a list of possible commands.
smb: \> ls
  .                                   D        0  Tue Mar 15 22:08:45 2022
  ..                                 DR        0  Sat Oct 31 02:33:58 2020
  linpeas.sh                         AR   775556  Tue Mar 15 13:02:01 2022
  .ICE-unix                          DH        0  Tue Mar 15 11:22:26 2022
  vmware-root                        DR        0  Tue Mar 15 11:22:48 2022
  .X11-unix                          DH        0  Tue Mar 15 11:22:50 2022
  .X0-lock                           HR       11  Tue Mar 15 11:22:50 2022
  5563.jsvc_up                        R        0  Tue Mar 15 11:23:28 2022
  vgauthsvclog.txt.0                  R     1600  Tue Mar 15 11:22:24 2022

		7282168 blocks of size 1024. 5385372 blocks available
smb: \> 
```