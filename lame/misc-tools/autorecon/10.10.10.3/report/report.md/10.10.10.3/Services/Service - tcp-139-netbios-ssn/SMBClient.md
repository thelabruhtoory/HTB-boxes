```bash
smbclient -L //10.10.10.3 -N -I 10.10.10.3 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbclient.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/smbclient.txt):

```
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
