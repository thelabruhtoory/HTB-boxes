# Nmap 7.92 scan initiated Fri Mar 18 17:55:53 2022 as: nmap -vvv -Pn -p 22,25,80,110,111,143,443,878,993,995,3306,4190,4445,4559,5038,10000 -sC -sV -oN /HTB-boxes/beep/recon/nmap_all_tcp.md 10.10.10.7
Nmap scan report for beep.htb (10.10.10.7)
Host is up, received user-set (0.18s latency).
Scanned at 2022-03-18 17:55:54 EDT for 392s

PORT      STATE SERVICE    REASON  VERSION
22/tcp    open  ssh        syn-ack OpenSSH 4.3 (protocol 2.0)
| ssh-hostkey: 
|   1024 ad:ee:5a:bb:69:37:fb:27:af:b8:30:72:a0:f9:6f:53 (DSA)
| ssh-dss AAAAB3NzaC1kc3MAAACBAI04jN+Sn7/9f2k+5UteAWn8KKj3FRGuF4LyeDmo/xxuHgSsdCjYuWtNS8m7stqgNH5edUu8vZ0pzF/quX5kphWg/UOz9weGeGyzde5lfb8epRlTQ2kfbP00l+kq9ztuWaXOsZQGcSR9iKE4lLRJhRCLYPaEbuxKnYz4WhAv4yD5AAAAFQDXgQ9BbvoxeDahe/ksAac2ECqflwAAAIEAiGdIue6mgTfdz/HikSp8DB6SkVh4xjpTTZE8L/HOVpTUYtFYKYj9eG0W1WYo+lGg6SveATlp3EE/7Y6BqdtJNm0RfR8kihoqSL0VzKT7myerJWmP2EavMRPjkbXw32fVBdCGjBqMgDl/QSEn2NNDu8OAyQUVBEHrE4xPGI825qgAAACANnqx2XdVmY8agjD7eFLmS+EovCIRz2+iE+5chaljGD/27OgpGcjdZNN+xm85PPFjUKJQuWmwMVTQRdza6TSp9vvQAgFh3bUtTV3dzDCuoR1D2Ybj9p/bMPnyw62jgBPxj5lVd27LTBi8IAH2fZnct7794Y3Ge+5r4Pm8Qbrpy68=
|   2048 bc:c6:73:59:13:a1:8a:4b:55:07:50:f6:65:1d:6d:0d (RSA)
|_ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA4SXumrUtyO/pcRLwmvnF25NG/ozHsxSVNRmTwEf7AYubgpAo4aUuvhZXg5iymwTcZd6vm46Y+TX39NQV/yT6ilAEtLbrj1PLjJl+UTS8HDIKl6QgIb1b3vuEjbVjDj1LTq0Puzx52Es0/86WJNRVwh4c9vN8MtYteMb/dE2Azk0SQMtpBP+4Lul4kQrNwl/qjg+lQ7XE+NU7Va22dpEjLv/TjHAKImQu2EqPsC99sePp8PP5LdNbda6KHsSrZXnK9hqpxnwattPHT19D94NHVmMHfea9gXN3NCI3NVfDHQsxhqVtR/LiZzpbKHldFU0lfZYH1aTdBfxvMLrVhasZcw==
25/tcp    open  smtp       syn-ack Postfix smtpd
|_smtp-commands: beep.localdomain, PIPELINING, SIZE 10240000, VRFY, ETRN, ENHANCEDSTATUSCODES, 8BITMIME, DSN
80/tcp    open  http       syn-ack Apache httpd 2.2.3
|_http-server-header: Apache/2.2.3 (CentOS)
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Did not follow redirect to https://beep.htb/
110/tcp   open  pop3       syn-ack Cyrus pop3d 2.3.7-Invoca-RPM-2.3.7-7.el5_6.4
|_pop3-capabilities: RESP-CODES TOP USER IMPLEMENTATION(Cyrus POP3 server v2) AUTH-RESP-CODE EXPIRE(NEVER) PIPELINING UIDL LOGIN-DELAY(0) STLS APOP
111/tcp   open  rpcbind    syn-ack 2 (RPC #100000)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2            111/tcp   rpcbind
|   100000  2            111/udp   rpcbind
|   100024  1            875/udp   status
|_  100024  1            878/tcp   status
143/tcp   open  imap       syn-ack Cyrus imapd 2.3.7-Invoca-RPM-2.3.7-7.el5_6.4
|_imap-capabilities: LISTEXT Completed RENAME THREAD=ORDEREDSUBJECT URLAUTHA0001 X-NETSCAPE LIST-SUBSCRIBED IDLE ATOMIC IMAP4rev1 CONDSTORE CATENATE ANNOTATEMORE STARTTLS ACL THREAD=REFERENCES OK UNSELECT NO SORT=MODSEQ SORT BINARY CHILDREN QUOTA MULTIAPPEND UIDPLUS MAILBOX-REFERRALS LITERAL+ NAMESPACE ID IMAP4 RIGHTS=kxte
443/tcp   open  ssl/http   syn-ack Apache httpd 2.2.3 ((CentOS))
|_http-server-header: Apache/2.2.3 (CentOS)
| ssl-cert: Subject: commonName=localhost.localdomain/organizationName=SomeOrganization/stateOrProvinceName=SomeState/countryName=--/emailAddress=root@localhost.localdomain/localityName=SomeCity/organizationalUnitName=SomeOrganizationalUnit
| Issuer: commonName=localhost.localdomain/organizationName=SomeOrganization/stateOrProvinceName=SomeState/countryName=--/emailAddress=root@localhost.localdomain/localityName=SomeCity/organizationalUnitName=SomeOrganizationalUnit
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2017-04-07T08:22:08
| Not valid after:  2018-04-07T08:22:08
| MD5:   621a 82b6 cf7e 1afa 5284 1c91 60c8 fbc8
| SHA-1: 800a c6e7 065e 1198 0187 c452 0d9b 18ef e557 a09f
| -----BEGIN CERTIFICATE-----
| MIIEDjCCA3egAwIBAgICfVUwDQYJKoZIhvcNAQEFBQAwgbsxCzAJBgNVBAYTAi0t
| MRIwEAYDVQQIEwlTb21lU3RhdGUxETAPBgNVBAcTCFNvbWVDaXR5MRkwFwYDVQQK
| ExBTb21lT3JnYW5pemF0aW9uMR8wHQYDVQQLExZTb21lT3JnYW5pemF0aW9uYWxV
| bml0MR4wHAYDVQQDExVsb2NhbGhvc3QubG9jYWxkb21haW4xKTAnBgkqhkiG9w0B
| CQEWGnJvb3RAbG9jYWxob3N0LmxvY2FsZG9tYWluMB4XDTE3MDQwNzA4MjIwOFoX
| DTE4MDQwNzA4MjIwOFowgbsxCzAJBgNVBAYTAi0tMRIwEAYDVQQIEwlTb21lU3Rh
| dGUxETAPBgNVBAcTCFNvbWVDaXR5MRkwFwYDVQQKExBTb21lT3JnYW5pemF0aW9u
| MR8wHQYDVQQLExZTb21lT3JnYW5pemF0aW9uYWxVbml0MR4wHAYDVQQDExVsb2Nh
| bGhvc3QubG9jYWxkb21haW4xKTAnBgkqhkiG9w0BCQEWGnJvb3RAbG9jYWxob3N0
| LmxvY2FsZG9tYWluMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC3e4HhLYPN
| gwJ4eKlW/UpmemPfK/a3mcafSqx/AJP34OC0Twj/cZNaqFPLOWfNjcq4mmiV++9a
| oJCkj4apDkyICI1emsrPaRdrlA/cCXcn3nupfOgcfpBV4vqNfqorEqpJCO7T4bcp
| Z6YHuxtRtP7gRJiE1ytAFP2jDvtvMqEWkwIDAQABo4IBHTCCARkwHQYDVR0OBBYE
| FL/OLJ7hJVedlL5Gk0fYvo6bZkqWMIHpBgNVHSMEgeEwgd6AFL/OLJ7hJVedlL5G
| k0fYvo6bZkqWoYHBpIG+MIG7MQswCQYDVQQGEwItLTESMBAGA1UECBMJU29tZVN0
| YXRlMREwDwYDVQQHEwhTb21lQ2l0eTEZMBcGA1UEChMQU29tZU9yZ2FuaXphdGlv
| bjEfMB0GA1UECxMWU29tZU9yZ2FuaXphdGlvbmFsVW5pdDEeMBwGA1UEAxMVbG9j
| YWxob3N0LmxvY2FsZG9tYWluMSkwJwYJKoZIhvcNAQkBFhpyb290QGxvY2FsaG9z
| dC5sb2NhbGRvbWFpboICfVUwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOB
| gQA+ah2n+bomON94KgibPEVPpmW+8N6Sq3f4qDG54urTnPD39GrYHvMwA3B2ang9
| l3zta5tXYAVj22kiNM2si4bOMQsa6FZR4AEzWCq9tZS/vTCCRaT79mWj3bUvtDkV
| 2ScJ9I/7b4/cPHDOrAKdzdKxEE2oM0cwKxSnYBJk/4aJIw==
|_-----END CERTIFICATE-----
|_ssl-date: 2022-03-18T23:15:25+00:00; +1h16m07s from scanner time.
| http-robots.txt: 1 disallowed entry 
|_/
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-favicon: Unknown favicon MD5: 80DCC71362B27C7D0E608B0890C05E9F
|_http-title: Elastix - Login page
878/tcp   open  status     syn-ack 1 (RPC #100024)
993/tcp   open  ssl/imap   syn-ack Cyrus imapd
|_imap-capabilities: CAPABILITY
995/tcp   open  pop3       syn-ack Cyrus pop3d
3306/tcp  open  mysql?     syn-ack
|_tls-alpn: ERROR: Script execution failed (use -d to debug)
|_tls-nextprotoneg: ERROR: Script execution failed (use -d to debug)
|_ssl-cert: ERROR: Script execution failed (use -d to debug)
|_ssl-date: ERROR: Script execution failed (use -d to debug)
|_mysql-info: ERROR: Script execution failed (use -d to debug)
|_sslv2: ERROR: Script execution failed (use -d to debug)
4190/tcp  open  sieve      syn-ack Cyrus timsieved 2.3.7-Invoca-RPM-2.3.7-7.el5_6.4 (included w/cyrus imap)
4445/tcp  open  upnotifyp? syn-ack
4559/tcp  open  hylafax    syn-ack HylaFAX 4.3.10
5038/tcp  open  asterisk   syn-ack Asterisk Call Manager 1.1
10000/tcp open  http       syn-ack MiniServ 1.570 (Webmin httpd)
|_http-favicon: Unknown favicon MD5: 74F7F6F633A027FA3EA36F05004C9341
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Site doesn't have a title (text/html; Charset=iso-8859-1).
Service Info: Hosts:  beep.localdomain, 127.0.0.1, example.com, localhost; OS: Unix

Host script results:
|_clock-skew: 1h16m06s

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Mar 18 18:02:26 2022 -- 1 IP address (1 host up) scanned in 392.32 seconds
