```bash
nmap -vv --reason -Pn -T4 -sV -p 139 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_nmap.xml" 10.10.10.3
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_nmap.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_nmap.txt):

```
# Nmap 7.92 scan initiated Tue Mar 15 21:44:41 2022 as: nmap -vv --reason -Pn -T4 -sV -p 139 "--script=banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_nmap.txt -oX /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_nmap.xml 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.28s latency).
Scanned at 2022-03-15 21:44:41 EDT for 642s

PORT    STATE SERVICE     REASON         VERSION
139/tcp open  netbios-ssn syn-ack ttl 63 Samba smbd 3.0.20-Debian (workgroup: WORKGROUP)

Host script results:
|_smb2-capabilities: SMB 2+ not supported
| smb-ls: Volume \\10.10.10.3\tmp
| SIZE    TIME                 FILENAME
| <DIR>   2022-03-16T02:08:50  .
| <DIR>   2020-10-31T06:33:58  ..
| 775556  2022-03-15T17:02:01  linpeas.sh
| <DIR>   2022-03-15T15:22:24  vmware-root
| 0       2022-03-15T15:23:28  5563.jsvc_up
| 1600    2022-03-15T15:22:24  vgauthsvclog.txt.0
|_
| smb-enum-users: 
|   LAME\backup (RID: 1068)
|     Full name:   backup
|     Flags:       Normal user account, Account disabled
|   LAME\bin (RID: 1004)
|     Full name:   bin
|     Flags:       Normal user account, Account disabled
|   LAME\bind (RID: 1210)
|     Flags:       Normal user account, Account disabled
|   LAME\daemon (RID: 1002)
|     Full name:   daemon
|     Flags:       Normal user account, Account disabled
|   LAME\dhcp (RID: 1202)
|     Flags:       Normal user account, Account disabled
|   LAME\distccd (RID: 1222)
|     Flags:       Normal user account, Account disabled
|   LAME\ftp (RID: 1214)
|     Flags:       Normal user account, Account disabled
|   LAME\games (RID: 1010)
|     Full name:   games
|     Flags:       Normal user account, Account disabled
|   LAME\gnats (RID: 1082)
|     Full name:   Gnats Bug-Reporting System (admin)
|     Flags:       Normal user account, Account disabled
|   LAME\irc (RID: 1078)
|     Full name:   ircd
|     Flags:       Normal user account, Account disabled
|   LAME\klog (RID: 1206)
|     Flags:       Normal user account, Account disabled
|   LAME\libuuid (RID: 1200)
|     Flags:       Normal user account, Account disabled
|   LAME\list (RID: 1076)
|     Full name:   Mailing List Manager
|     Flags:       Normal user account, Account disabled
|   LAME\lp (RID: 1014)
|     Full name:   lp
|     Flags:       Normal user account, Account disabled
|   LAME\mail (RID: 1016)
|     Full name:   mail
|     Flags:       Normal user account, Account disabled
|   LAME\man (RID: 1012)
|     Full name:   man
|     Flags:       Normal user account, Account disabled
|   LAME\msfadmin (RID: 3000)
|     Full name:   msfadmin,,,
|     Flags:       Normal user account
|   LAME\mysql (RID: 1218)
|     Full name:   MySQL Server,,,
|     Flags:       Normal user account, Account disabled
|   LAME\news (RID: 1018)
|     Full name:   news
|     Flags:       Normal user account, Account disabled
|   LAME\nobody (RID: 501)
|     Full name:   nobody
|     Flags:       Normal user account, Account disabled
|   LAME\postfix (RID: 1212)
|     Flags:       Normal user account, Account disabled
|   LAME\postgres (RID: 1216)
|     Full name:   PostgreSQL administrator,,,
|     Flags:       Normal user account, Account disabled
|   LAME\proftpd (RID: 1226)
|     Flags:       Normal user account, Account disabled
|   LAME\proxy (RID: 1026)
|     Full name:   proxy
|     Flags:       Normal user account, Account disabled
|   LAME\root (RID: 1000)
|     Full name:   root
|     Flags:       Normal user account, Account disabled
|   LAME\service (RID: 3004)
|     Full name:   ,,,
|     Flags:       Normal user account, Account disabled
|   LAME\sshd (RID: 1208)
|     Flags:       Normal user account, Account disabled
|   LAME\sync (RID: 1008)
|     Full name:   sync
|     Flags:       Normal user account, Account disabled
|   LAME\sys (RID: 1006)
|     Full name:   sys
|     Flags:       Normal user account, Account disabled
|   LAME\syslog (RID: 1204)
|     Flags:       Normal user account, Account disabled
|   LAME\telnetd (RID: 1224)
|     Flags:       Normal user account, Account disabled
|   LAME\tomcat55 (RID: 1220)
|     Flags:       Normal user account, Account disabled
|   LAME\user (RID: 3002)
|     Full name:   just a user,111,,
|     Flags:       Normal user account
|   LAME\uucp (RID: 1020)
|     Full name:   uucp
|     Flags:       Normal user account, Account disabled
|   LAME\www-data (RID: 1066)
|     Full name:   www-data
|_    Flags:       Normal user account, Account disabled
|_smb-vuln-ms10-061: false
|_smb2-security-mode: Couldn't establish a SMBv2 connection.
|_smb2-time: Protocol negotiation failed (SMB2)
|_smb-print-text: false
| smb-mbenum: 
|   Master Browser
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Print server
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Server
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Server service
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Unix server
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Windows NT/2000/XP/2003 server
|     LAME  0.0  lame server (Samba 3.0.20-Debian)
|   Workstation
|_    LAME  0.0  lame server (Samba 3.0.20-Debian)
|_smb-system-info: ERROR: Script execution failed (use -d to debug)
|_smb-enum-sessions: ERROR: Script execution failed (use -d to debug)
| smb-os-discovery: 
|   OS: Unix (Samba 3.0.20-Debian)
|   Computer name: lame
|   NetBIOS computer name: 
|   Domain name: hackthebox.gr
|   FQDN: lame.hackthebox.gr
|_  System time: 2022-03-15T22:01:50-04:00
| smb-protocols: 
|   dialects: 
|_    NT LM 0.12 (SMBv1) [dangerous, but default]
| smb-enum-shares: 
|   account_used: <blank>
|   \\10.10.10.3\ADMIN$: 
|     Type: STYPE_IPC
|     Comment: IPC Service (lame server (Samba 3.0.20-Debian))
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\tmp
|     Anonymous access: <none>
|   \\10.10.10.3\IPC$: 
|     Type: STYPE_IPC
|     Comment: IPC Service (lame server (Samba 3.0.20-Debian))
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\tmp
|     Anonymous access: READ/WRITE
|   \\10.10.10.3\opt: 
|     Type: STYPE_DISKTREE
|     Comment: 
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\tmp
|     Anonymous access: <none>
|   \\10.10.10.3\print$: 
|     Type: STYPE_DISKTREE
|     Comment: Printer Drivers
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\var\lib\samba\printers
|     Anonymous access: <none>
|   \\10.10.10.3\tmp: 
|     Type: STYPE_DISKTREE
|     Comment: oh noes!
|     Users: 1
|     Max Users: <unlimited>
|     Path: C:\tmp
|_    Anonymous access: READ/WRITE
| smb-security-mode: 
|   account_used: <blank>
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Mar 15 21:55:23 2022 -- 1 IP address (1 host up) scanned in 641.86 seconds

```
