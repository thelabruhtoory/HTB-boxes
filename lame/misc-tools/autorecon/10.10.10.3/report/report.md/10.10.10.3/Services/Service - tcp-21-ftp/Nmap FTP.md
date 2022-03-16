```bash
nmap -vv --reason -Pn -T4 -sV -p 21 --script="banner,(ftp* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/xml/tcp_21_ftp_nmap.xml" 10.10.10.3
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_nmap.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_nmap.txt):

```
# Nmap 7.92 scan initiated Tue Mar 15 21:44:41 2022 as: nmap -vv --reason -Pn -T4 -sV -p 21 "--script=banner,(ftp* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_nmap.txt -oX /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/xml/tcp_21_ftp_nmap.xml 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.29s latency).
Scanned at 2022-03-15 21:44:41 EDT for 24s

PORT   STATE SERVICE REASON         VERSION
21/tcp open  ftp     syn-ack ttl 63 vsftpd 2.3.4
|_banner: 220 (vsFTPd 2.3.4)
|_ftp-anon: Anonymous FTP login allowed (FTP code 230)
| ftp-syst: 
|   STAT: 
| FTP server status:
|      Connected to 10.10.14.12
|      Logged in as ftp
|      TYPE: ASCII
|      No session bandwidth limit
|      Session timeout in seconds is 300
|      Control connection is plain text
|      Data connections will be plain text
|      vsFTPd 2.3.4 - secure, fast, stable
|_End of status
Service Info: OS: Unix

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Mar 15 21:45:05 2022 -- 1 IP address (1 host up) scanned in 24.05 seconds

```
