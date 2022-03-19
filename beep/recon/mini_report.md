### Interesting Services

```bash
sudo masscan -p0-65535 10.10.10.7 --max-rate 1000 -oG /HTB-boxes/beep/recon/masscan-tcp.md -e tun0
```

```txt
...

3306/open/tcp//mysql//

...

443/open/tcp//https//

...

80/open/tcp//http//

...

10000/open/tcp//webmin//

...

4559/open/tcp//hylafax//

...

```

```bash
nmap -vvv -Pn -p 22,25,80,110,111,143,443,878,993,995,3306,4190,4445,4559,5038,10000 -sC -sV -oN /HTB-boxes/beep/recon/nmap_all_tcp.md 10.10.10.7
```

```txt

...

25/tcp    open  smtp       syn-ack Postfix smtpd
|_smtp-commands: beep.localdomain, PIPELINING, SIZE 10240000, VRFY, ETRN, ENHANCEDSTATUSCODES, 8BITMIME, DSN

...

80/tcp    open  http       syn-ack Apache httpd 2.2.3
|_http-server-header: Apache/2.2.3 (CentOS)
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Did not follow redirect to https://beep.htb/

...

143/tcp   open  imap       syn-ack Cyrus imapd 2.3.7-Invoca-RPM-2.3.7-7.el5_6.4
|_imap-capabilities: LISTEXT Completed RENAME THREAD=ORDEREDSUBJECT URLAUTHA0001 X-NETSCAPE LIST-SUBSCRIBED IDLE ATOMIC IMAP4rev1 CONDSTORE CATENATE ANNOTATEMORE STARTTLS ACL THREAD=REFERENCES OK UNSELECT NO SORT=MODSEQ SORT BINARY CHILDREN QUOTA MULTIAPPEND UIDPLUS MAILBOX-REFERRALS LITERAL+ NAMESPACE ID IMAP4 RIGHTS=kxte

...

443/tcp   open  ssl/http   syn-ack Apache httpd 2.2.3 ((CentOS))
|_http-server-header: Apache/2.2.3 (CentOS)
| ssl-cert: Subject: commonName=localhost.localdomain/organizationName=SomeOrganization/stateOrProvinceName=SomeState/countryName=--/emailAddress=root@localhost.localdomain/localityName=SomeCity/organizationalUnitName=SomeOrganizationalUnit
| Issuer: commonName=localhost.localdomain/organizationName=SomeOrganization/stateOrProvinceName=SomeState/countryName=--/emailAddress=root@localhost.localdomain/localityName=SomeCity/organizationalUnitName=SomeOrganizationalUnit

...

4559/tcp  open  hylafax    syn-ack HylaFAX 4.3.10

...

5038/tcp  open  asterisk   syn-ack Asterisk Call Manager 1.1

...

10000/tcp open  http       syn-ack MiniServ 1.570 (Webmin httpd)
|_http-favicon: Unknown favicon MD5: 74F7F6F633A027FA3EA36F05004C9341
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Site doesn't have a title (text/html; Charset=iso-8859-1).

...

Service Info: Hosts:  beep.localdomain, 127.0.0.1, example.com, localhost; OS: Unix

```