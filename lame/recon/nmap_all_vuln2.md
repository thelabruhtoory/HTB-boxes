# Nmap 7.92 scan initiated Tue Mar 15 23:57:00 2022 as: nmap -vvv -Pn -p 21,22,139,445,3632 --script vuln -oN /HTB-boxes/lame/recon/nmap_all_vuln2.md 10.10.10.3
Nmap scan report for 10.10.10.3
Host is up, received user-set (0.19s latency).
Scanned at 2022-03-15 23:57:10 EDT for 127s

PORT     STATE SERVICE      REASON
21/tcp   open  ftp          syn-ack
22/tcp   open  ssh          syn-ack
139/tcp  open  netbios-ssn  syn-ack
445/tcp  open  microsoft-ds syn-ack
3632/tcp open  distccd      syn-ack
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
|       https://nvd.nist.gov/vuln/detail/CVE-2004-2687
|       https://distcc.github.io/security.html
|_      https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-2687

Host script results:
|_smb-vuln-ms10-061: false
|_smb-vuln-regsvc-dos: ERROR: Script execution failed (use -d to debug)
|_smb-vuln-ms10-054: false

Read data files from: /usr/bin/../share/nmap
# Nmap done at Tue Mar 15 23:59:17 2022 -- 1 IP address (1 host up) scanned in 137.34 seconds
