```bash
[*] ftp on tcp/21

	[-] Bruteforce logins:

		hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 21 -o "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_hydra.txt" ftp://10.10.10.3

		medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 21 -O "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_medusa.txt" -M ftp -h 10.10.10.3

[*] ssh on tcp/22

	[-] Bruteforce logins:

		hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 22 -o "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp22/tcp_22_ssh_hydra.txt" ssh://10.10.10.3

		medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 22 -O "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp22/tcp_22_ssh_medusa.txt" -M ssh -h 10.10.10.3

[*] netbios-ssn on tcp/139

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 139 --script="smb-vuln-ms06-025" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_ms06-025.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_ms06-025.xml" 10.10.10.3

		nmap -vv --reason -Pn -T4 -sV -p 139 --script="smb-vuln-ms07-029" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_ms07-029.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_ms07-029.xml" 10.10.10.3

		nmap -vv --reason -Pn -T4 -sV -p 139 --script="smb-vuln-ms08-067" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_ms08-067.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_ms08-067.xml" 10.10.10.3

[*] netbios-ssn on tcp/445

	[-] Nmap scans for SMB vulnerabilities that could potentially cause a DoS if scanned (according to Nmap). Be careful:

		nmap -vv --reason -Pn -T4 -sV -p 445 --script="smb-vuln-ms06-025" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/tcp_445_smb_ms06-025.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/xml/tcp_445_smb_ms06-025.xml" 10.10.10.3

		nmap -vv --reason -Pn -T4 -sV -p 445 --script="smb-vuln-ms07-029" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/tcp_445_smb_ms07-029.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/xml/tcp_445_smb_ms07-029.xml" 10.10.10.3

		nmap -vv --reason -Pn -T4 -sV -p 445 --script="smb-vuln-ms08-067" --script-args="unsafe=1" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/tcp_445_smb_ms08-067.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/xml/tcp_445_smb_ms08-067.xml" 10.10.10.3


```