```bash
enum4linux -a -M -l -d 10.10.10.3 2>&1
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/enum4linux.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/enum4linux.txt):

```
Starting enum4linux v0.8.9 ( http://labs.portcullis.co.uk/application/enum4linux/ ) on Tue Mar 15 21:44:41 2022

 ==========================
|    Target Information    |
 ==========================
Target ........... 10.10.10.3
RID Range ........ 500-550,1000-1050
Username ......... ''
Password ......... ''
Known Usernames .. administrator, guest, krbtgt, domain admins, root, bin, none


 ==================================================
|    Enumerating Workgroup/Domain on 10.10.10.3    |
 ==================================================
[E] Can't find workgroup/domain


 ==========================================
|    Nbtstat Information for 10.10.10.3    |
 ==========================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 437.
Looking up status of 10.10.10.3
No reply from 10.10.10.3

 ===================================
|    Session Check on 10.10.10.3    |
 ===================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 451.
[+] Server 10.10.10.3 allows sessions using username '', password ''
[+] Got domain/workgroup name:

 ===================================================
|    Getting information via LDAP for 10.10.10.3    |
 ===================================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 359.
[E] Connection error

 =========================================
|    Getting domain SID for 10.10.10.3    |
 =========================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 458.
Domain Name: WORKGROUP
Domain Sid: (NULL SID)
[+] Can't determine if host is part of domain or part of a workgroup

 ====================================
|    OS information on 10.10.10.3    |
 ====================================
Use of uninitialized value $os_info in concatenation (.) or string at ./enum4linux.pl line 464.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 467.
[+] Got OS info for 10.10.10.3 from smbclient:
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 866.
[+] Got OS info for 10.10.10.3 from srvinfo:
	LAME           Wk Sv PrQ Unx NT SNT lame server (Samba 3.0.20-Debian)
	platform_id     :	500
	os version      :	4.9
	server type     :	0x9a03

 ===========================
|    Users on 10.10.10.3    |
 ===========================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 881.
index: 0x1 RID: 0x3f2 acb: 0x00000011 Account: games	Name: games	Desc: (null)
index: 0x2 RID: 0x1f5 acb: 0x00000011 Account: nobody	Name: nobody	Desc: (null)
index: 0x3 RID: 0x4ba acb: 0x00000011 Account: bind	Name: (null)	Desc: (null)
index: 0x4 RID: 0x402 acb: 0x00000011 Account: proxy	Name: proxy	Desc: (null)
index: 0x5 RID: 0x4b4 acb: 0x00000011 Account: syslog	Name: (null)	Desc: (null)
index: 0x6 RID: 0xbba acb: 0x00000010 Account: user	Name: just a user,111,,	Desc: (null)
index: 0x7 RID: 0x42a acb: 0x00000011 Account: www-data	Name: www-data	Desc: (null)
index: 0x8 RID: 0x3e8 acb: 0x00000011 Account: root	Name: root	Desc: (null)
index: 0x9 RID: 0x3fa acb: 0x00000011 Account: news	Name: news	Desc: (null)
index: 0xa RID: 0x4c0 acb: 0x00000011 Account: postgres	Name: PostgreSQL administrator,,,	Desc: (null)
index: 0xb RID: 0x3ec acb: 0x00000011 Account: bin	Name: bin	Desc: (null)
index: 0xc RID: 0x3f8 acb: 0x00000011 Account: mail	Name: mail	Desc: (null)
index: 0xd RID: 0x4c6 acb: 0x00000011 Account: distccd	Name: (null)	Desc: (null)
index: 0xe RID: 0x4ca acb: 0x00000011 Account: proftpd	Name: (null)	Desc: (null)
index: 0xf RID: 0x4b2 acb: 0x00000011 Account: dhcp	Name: (null)	Desc: (null)
index: 0x10 RID: 0x3ea acb: 0x00000011 Account: daemon	Name: daemon	Desc: (null)
index: 0x11 RID: 0x4b8 acb: 0x00000011 Account: sshd	Name: (null)	Desc: (null)
index: 0x12 RID: 0x3f4 acb: 0x00000011 Account: man	Name: man	Desc: (null)
index: 0x13 RID: 0x3f6 acb: 0x00000011 Account: lp	Name: lp	Desc: (null)
index: 0x14 RID: 0x4c2 acb: 0x00000011 Account: mysql	Name: MySQL Server,,,	Desc: (null)
index: 0x15 RID: 0x43a acb: 0x00000011 Account: gnats	Name: Gnats Bug-Reporting System (admin)	Desc: (null)
index: 0x16 RID: 0x4b0 acb: 0x00000011 Account: libuuid	Name: (null)	Desc: (null)
index: 0x17 RID: 0x42c acb: 0x00000011 Account: backup	Name: backup	Desc: (null)
index: 0x18 RID: 0xbb8 acb: 0x00000010 Account: msfadmin	Name: msfadmin,,,	Desc: (null)
index: 0x19 RID: 0x4c8 acb: 0x00000011 Account: telnetd	Name: (null)	Desc: (null)
index: 0x1a RID: 0x3ee acb: 0x00000011 Account: sys	Name: sys	Desc: (null)
index: 0x1b RID: 0x4b6 acb: 0x00000011 Account: klog	Name: (null)	Desc: (null)
index: 0x1c RID: 0x4bc acb: 0x00000011 Account: postfix	Name: (null)	Desc: (null)
index: 0x1d RID: 0xbbc acb: 0x00000011 Account: service	Name: ,,,	Desc: (null)
index: 0x1e RID: 0x434 acb: 0x00000011 Account: list	Name: Mailing List Manager	Desc: (null)
index: 0x1f RID: 0x436 acb: 0x00000011 Account: irc	Name: ircd	Desc: (null)
index: 0x20 RID: 0x4be acb: 0x00000011 Account: ftp	Name: (null)	Desc: (null)
index: 0x21 RID: 0x4c4 acb: 0x00000011 Account: tomcat55	Name: (null)	Desc: (null)
index: 0x22 RID: 0x3f0 acb: 0x00000011 Account: sync	Name: sync	Desc: (null)
index: 0x23 RID: 0x3fc acb: 0x00000011 Account: uucp	Name: uucp	Desc: (null)

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
user:[games] rid:[0x3f2]
user:[nobody] rid:[0x1f5]
user:[bind] rid:[0x4ba]
user:[proxy] rid:[0x402]
user:[syslog] rid:[0x4b4]
user:[user] rid:[0xbba]
user:[www-data] rid:[0x42a]
user:[root] rid:[0x3e8]
user:[news] rid:[0x3fa]
user:[postgres] rid:[0x4c0]
user:[bin] rid:[0x3ec]
user:[mail] rid:[0x3f8]
user:[distccd] rid:[0x4c6]
user:[proftpd] rid:[0x4ca]
user:[dhcp] rid:[0x4b2]
user:[daemon] rid:[0x3ea]
user:[sshd] rid:[0x4b8]
user:[man] rid:[0x3f4]
user:[lp] rid:[0x3f6]
user:[mysql] rid:[0x4c2]
user:[gnats] rid:[0x43a]
user:[libuuid] rid:[0x4b0]
user:[backup] rid:[0x42c]
user:[msfadmin] rid:[0xbb8]
user:[telnetd] rid:[0x4c8]
user:[sys] rid:[0x3ee]
user:[klog] rid:[0x4b6]
user:[postfix] rid:[0x4bc]
user:[service] rid:[0xbbc]
user:[list] rid:[0x434]
user:[irc] rid:[0x436]
user:[ftp] rid:[0x4be]
user:[tomcat55] rid:[0x4c4]
user:[sync] rid:[0x3f0]
user:[uucp] rid:[0x3fc]
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	irc
	Full Name   :	ircd
	Home Drive  :	\\lame\irc
	Dir Drive   :
	Profile Path:	\\lame\irc\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x436
	group_rid:	0x437
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	dhcp
	Full Name   :
	Home Drive  :	\\lame\dhcp
	Dir Drive   :
	Profile Path:	\\lame\dhcp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4b2
	group_rid:	0x4b5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	root
	Full Name   :	root
	Home Drive  :	\\lame\root
	Dir Drive   :
	Profile Path:	\\lame\root\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3e8
	group_rid:	0x3e9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	mail
	Full Name   :	mail
	Home Drive  :	\\lame\mail
	Dir Drive   :
	Profile Path:	\\lame\mail\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f8
	group_rid:	0x3f9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	postfix
	Full Name   :
	Home Drive  :	\\lame\postfix
	Dir Drive   :
	Profile Path:	\\lame\postfix\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4bc
	group_rid:	0x4cf
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	sys
	Full Name   :	sys
	Home Drive  :	\\lame\sys
	Dir Drive   :
	Profile Path:	\\lame\sys\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ee
	group_rid:	0x3ef
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	games
	Full Name   :	games
	Home Drive  :	\\lame\games
	Dir Drive   :
	Profile Path:	\\lame\games\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f2
	group_rid:	0x461
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	sshd
	Full Name   :
	Home Drive  :	\\lame\sshd
	Dir Drive   :
	Profile Path:	\\lame\sshd\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4b8
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	gnats
	Full Name   :	Gnats Bug-Reporting System (admin)
	Home Drive  :	\\lame\gnats
	Dir Drive   :
	Profile Path:	\\lame\gnats\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x43a
	group_rid:	0x43b
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	bin
	Full Name   :	bin
	Home Drive  :	\\lame\bin
	Dir Drive   :
	Profile Path:	\\lame\bin\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ec
	group_rid:	0x3ed
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	proxy
	Full Name   :	proxy
	Home Drive  :	\\lame\proxy
	Dir Drive   :
	Profile Path:	\\lame\proxy\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x402
	group_rid:	0x403
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	distccd
	Full Name   :
	Home Drive  :	\\lame\distccd
	Dir Drive   :
	Profile Path:	\\lame\distccd\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4c6
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	lp
	Full Name   :	lp
	Home Drive  :	\\lame\lp
	Dir Drive   :
	Profile Path:	\\lame\lp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f6
	group_rid:	0x3f7
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	mysql
	Full Name   :	MySQL Server,,,
	Home Drive  :	\\lame\mysql
	Dir Drive   :
	Profile Path:	\\lame\mysql\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4c2
	group_rid:	0x4d5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	backup
	Full Name   :	backup
	Home Drive  :	\\lame\backup
	Dir Drive   :
	Profile Path:	\\lame\backup\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x42c
	group_rid:	0x42d
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	uucp
	Full Name   :	uucp
	Home Drive  :	\\lame\uucp
	Dir Drive   :
	Profile Path:	\\lame\uucp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3fc
	group_rid:	0x3fd
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	user
	Full Name   :	just a user,111,,
	Home Drive  :	\\lame\user
	Dir Drive   :
	Profile Path:	\\lame\user\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Mon, 17 May 2010 21:39:25 EDT
	Password can change Time :	Mon, 17 May 2010 21:39:25 EDT
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0xbba
	group_rid:	0xbbb
	acb_info :	0x00000010
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : False
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	sync
	Full Name   :	sync
	Home Drive  :	\\lame\sync
	Dir Drive   :
	Profile Path:	\\lame\sync\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f0
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	syslog
	Full Name   :
	Home Drive  :	\\lame\syslog
	Dir Drive   :
	Profile Path:	\\lame\syslog\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4b4
	group_rid:	0x4b7
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	proftpd
	Full Name   :
	Home Drive  :	\\lame\proftpd
	Dir Drive   :
	Profile Path:	\\lame\proftpd\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4ca
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	ftp
	Full Name   :
	Home Drive  :	\\lame\ftp
	Dir Drive   :
	Profile Path:	\\lame\ftp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4be
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	msfadmin
	Full Name   :	msfadmin,,,
	Home Drive  :	\\lame\msfadmin
	Dir Drive   :
	Profile Path:	\\lame\msfadmin\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 28 Apr 2010 02:56:18 EDT
	Password can change Time :	Wed, 28 Apr 2010 02:56:18 EDT
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0xbb8
	group_rid:	0xbb9
	acb_info :	0x00000010
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : False
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	news
	Full Name   :	news
	Home Drive  :	\\lame\news
	Dir Drive   :
	Profile Path:	\\lame\news\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3fa
	group_rid:	0x3fb
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	tomcat55
	Full Name   :
	Home Drive  :	\\lame\tomcat55
	Dir Drive   :
	Profile Path:	\\lame\tomcat55\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4c4
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	list
	Full Name   :	Mailing List Manager
	Home Drive  :	\\lame\list
	Dir Drive   :
	Profile Path:	\\lame\list\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x434
	group_rid:	0x435
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	nobody
	Full Name   :	nobody
	Home Drive  :	\\lame\nobody
	Dir Drive   :
	Profile Path:	\\lame\nobody\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x1f5
	group_rid:	0x202
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	daemon
	Full Name   :	daemon
	Home Drive  :	\\lame\daemon
	Dir Drive   :
	Profile Path:	\\lame\daemon\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ea
	group_rid:	0x3eb
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	postgres
	Full Name   :	PostgreSQL administrator,,,
	Home Drive  :	\\lame\postgres
	Dir Drive   :
	Profile Path:	\\lame\postgres\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4c0
	group_rid:	0x4d3
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	www-data
	Full Name   :	www-data
	Home Drive  :	\\lame\www-data
	Dir Drive   :
	Profile Path:	\\lame\www-data\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x42a
	group_rid:	0x42b
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	libuuid
	Full Name   :
	Home Drive  :	\\lame\libuuid
	Dir Drive   :
	Profile Path:	\\lame\libuuid\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4b0
	group_rid:	0x4b3
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	man
	Full Name   :	man
	Home Drive  :	\\lame\man
	Dir Drive   :
	Profile Path:	\\lame\man\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f4
	group_rid:	0x401
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	telnetd
	Full Name   :
	Home Drive  :	\\lame\telnetd
	Dir Drive   :
	Profile Path:	\\lame\telnetd\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4c8
	group_rid:	0x4d9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	service
	Full Name   :	,,,
	Home Drive  :	\\lame\service
	Dir Drive   :
	Profile Path:	\\lame\service\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0xbbc
	group_rid:	0xbbd
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
	User Name   :	bind
	Full Name   :
	Home Drive  :	\\lame\bind
	Dir Drive   :
	Profile Path:	\\lame\bind\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4ba
	group_rid:	0x4cb
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 640.
	User Name   :	klog
	Full Name   :
	Home Drive  :	\\lame\klog
	Dir Drive   :
	Profile Path:	\\lame\klog\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x4b6
	group_rid:	0x4b9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False


 =========================================
|    Machine Enumeration on 10.10.10.3    |
 =========================================
[E] Internal error.  Not implmented in this version of enum4linux.

 =======================================
|    Share Enumeration on 10.10.10.3    |
 =======================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 654.

	Sharename       Type      Comment
	---------       ----      -------
	print$          Disk      Printer Drivers
	tmp             Disk      oh noes!
	opt             Disk
	IPC$            IPC       IPC Service (lame server (Samba 3.0.20-Debian))
	ADMIN$          IPC       IPC Service (lame server (Samba 3.0.20-Debian))
Reconnecting with SMB1 for workgroup listing.

	Server               Comment
	---------            -------

	Workgroup            Master
	---------            -------
	WORKGROUP            LAME

[+] Attempting to map shares on 10.10.10.3
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 654.
//10.10.10.3/print$	Mapping: DENIED, Listing: N/A
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 654.
//10.10.10.3/tmp	Mapping: OK, Listing: OK
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 654.
//10.10.10.3/opt	Mapping: DENIED, Listing: N/A
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 654.
//10.10.10.3/IPC$	[E] Can't understand response:
NT_STATUS_NETWORK_ACCESS_DENIED listing \*
//10.10.10.3/ADMIN$	Mapping: DENIED, Listing: N/A

 ==================================================
|    Password Policy Information for 10.10.10.3    |
 ==================================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 501.


[+] Attaching to 10.10.10.3 using a NULL share

[+] Trying protocol 139/SMB...

[+] Found domain(s):

	[+] LAME
	[+] Builtin

[+] Password Info for Domain: LAME

	[+] Minimum password length: 5
	[+] Password history length: None
	[+] Maximum password age: Not Set
	[+] Password Complexity Flags: 000000

		[+] Domain Refuse Password Change: 0
		[+] Domain Password Store Cleartext: 0
		[+] Domain Password Lockout Admins: 0
		[+] Domain Password No Clear Change: 0
		[+] Domain Password No Anon Change: 0
		[+] Domain Password Complex: 0

	[+] Minimum password age: None
	[+] Reset Account Lockout Counter: 30 minutes
	[+] Locked Account Duration: 30 minutes
	[+] Account Lockout Threshold: None
	[+] Forced Log off Time: Not Set

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 542.

[+] Retieved partial password policy with rpcclient:

Password Complexity: Disabled
Minimum Password Length: 0


 ============================
|    Groups on 10.10.10.3    |
 ============================

[+] Getting builtin groups:
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 542.

[+] Getting builtin group memberships:

[+] Getting local groups:
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 593.

[+] Getting local group memberships:

[+] Getting domain groups:
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.

[+] Getting domain group memberships:

 =====================================================================
|    Users on 10.10.10.3 via RID cycling (RIDS: 500-550,1000-1050)    |
 =====================================================================
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
[I] Found new SID: S-1-5-21-2446995257-2525374255-2673161615
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 710.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 742.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[+] Enumerating users using SID S-1-5-21-2446995257-2525374255-2673161615 and logon username '', password ''
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-500 LAME\Administrator (Local User)
Use of uninitialized value $user_info in pattern match (m//) at ./enum4linux.pl line 932.
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-501 LAME\nobody (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	nobody
	Full Name   :	nobody
	Home Drive  :	\\lame\nobody
	Dir Drive   :
	Profile Path:	\\lame\nobody\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x1f5
	group_rid:	0x202
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-502 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-503 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-504 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-505 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-506 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-507 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-508 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-509 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-510 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-511 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-512 LAME\Domain Admins (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-513 LAME\Domain Users (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-514 LAME\Domain Guests (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-515 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-516 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-517 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-518 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-519 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-520 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-521 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-522 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-523 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-524 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-525 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-526 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-527 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-528 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-529 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-530 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-531 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-532 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-533 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-534 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-535 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-536 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-537 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-538 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-539 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-540 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-541 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-542 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-543 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-544 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-545 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-546 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-547 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-548 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-549 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-550 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1000 LAME\root (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	root
	Full Name   :	root
	Home Drive  :	\\lame\root
	Dir Drive   :
	Profile Path:	\\lame\root\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3e8
	group_rid:	0x3e9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1001 LAME\root (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1002 LAME\daemon (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	daemon
	Full Name   :	daemon
	Home Drive  :	\\lame\daemon
	Dir Drive   :
	Profile Path:	\\lame\daemon\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ea
	group_rid:	0x3eb
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1003 LAME\daemon (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1004 LAME\bin (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	bin
	Full Name   :	bin
	Home Drive  :	\\lame\bin
	Dir Drive   :
	Profile Path:	\\lame\bin\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ec
	group_rid:	0x3ed
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1005 LAME\bin (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1006 LAME\sys (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	sys
	Full Name   :	sys
	Home Drive  :	\\lame\sys
	Dir Drive   :
	Profile Path:	\\lame\sys\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3ee
	group_rid:	0x3ef
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1007 LAME\sys (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1008 LAME\sync (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	sync
	Full Name   :	sync
	Home Drive  :	\\lame\sync
	Dir Drive   :
	Profile Path:	\\lame\sync\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f0
	group_rid:	0x203e5
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1009 LAME\adm (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1010 LAME\games (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	games
	Full Name   :	games
	Home Drive  :	\\lame\games
	Dir Drive   :
	Profile Path:	\\lame\games\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f2
	group_rid:	0x461
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1011 LAME\tty (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1012 LAME\man (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	man
	Full Name   :	man
	Home Drive  :	\\lame\man
	Dir Drive   :
	Profile Path:	\\lame\man\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f4
	group_rid:	0x401
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1013 LAME\disk (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1014 LAME\lp (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	lp
	Full Name   :	lp
	Home Drive  :	\\lame\lp
	Dir Drive   :
	Profile Path:	\\lame\lp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f6
	group_rid:	0x3f7
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1015 LAME\lp (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1016 LAME\mail (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	mail
	Full Name   :	mail
	Home Drive  :	\\lame\mail
	Dir Drive   :
	Profile Path:	\\lame\mail\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3f8
	group_rid:	0x3f9
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1017 LAME\mail (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1018 LAME\news (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	news
	Full Name   :	news
	Home Drive  :	\\lame\news
	Dir Drive   :
	Profile Path:	\\lame\news\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3fa
	group_rid:	0x3fb
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1019 LAME\news (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1020 LAME\uucp (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	uucp
	Full Name   :	uucp
	Home Drive  :	\\lame\uucp
	Dir Drive   :
	Profile Path:	\\lame\uucp\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x3fc
	group_rid:	0x3fd
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1021 LAME\uucp (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1022 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1023 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1024 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1025 LAME\man (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 927.
S-1-5-21-2446995257-2525374255-2673161615-1026 LAME\proxy (Local User)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
	User Name   :	proxy
	Full Name   :	proxy
	Home Drive  :	\\lame\proxy
	Dir Drive   :
	Profile Path:	\\lame\proxy\profile
	Logon Script:
	Description :
	Workstations:
	Comment     :	(null)
	Remote Dial :
	Logon Time               :	Wed, 31 Dec 1969 19:00:00 EST
	Logoff Time              :	Wed, 13 Sep 30828 22:48:05 EDT
	Kickoff Time             :	Wed, 13 Sep 30828 22:48:05 EDT
	Password last set Time   :	Wed, 31 Dec 1969 19:00:00 EST
	Password can change Time :	Wed, 31 Dec 1969 19:00:00 EST
	Password must change Time:	Wed, 13 Sep 30828 22:48:05 EDT
	unknown_2[0..31]...
	user_rid :	0x402
	group_rid:	0x403
	acb_info :	0x00000011
	fields_present:	0x00ffffff
	logon_divs:	168
	bad_password_count:	0x00000000
	logon_count:	0x00000000
	padding1[0..7]...
	logon_hrs[0..21]...
	Account Disabled         : True
	Password does not expire : False
	Account locked out       : False
	Password expired         : False
	Interdomain trust account: False
	Workstation trust account: False
	Server trust account     : False
	Trusted for delegation   : False

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1027 LAME\proxy (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1028 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1029 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1030 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1031 LAME\kmem (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1032 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1033 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1034 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1035 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1036 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1037 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1038 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1039 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1040 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1041 LAME\dialout (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1042 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1043 LAME\fax (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1044 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1045 LAME\voice (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1046 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1047 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
S-1-5-21-2446995257-2525374255-2673161615-1048 *unknown*\*unknown* (8)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 909.
S-1-5-21-2446995257-2525374255-2673161615-1049 LAME\cdrom (Domain Group)
Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 834.
[E] No info found

Use of uninitialized value $global_workgroup in concatenation (.) or string at ./enum4linux.pl line 991.
S-1-5-21-2446995257-2525374255-2673161615-1050 *unknown*\*unknown* (8)

 ===========================================
|    Getting printer info for 10.10.10.3    |
 ===========================================
No printers returned.


enum4linux complete on Tue Mar 15 21:59:40 2022



```
