```bash
nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 21,22,139,445,3632 -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_custom_ports_udp_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/xml/_custom_ports_udp_nmap.xml" 10.10.10.3

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 21,22,139,445,3632 -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/_full_tcp_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/xml/_full_tcp_nmap.xml" 10.10.10.3

nmap -vv --reason -Pn -T4 -sV -p 21 --script="banner,(ftp* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/tcp_21_ftp_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp21/xml/tcp_21_ftp_nmap.xml" 10.10.10.3

nmap -vv --reason -Pn -T4 -sV -p 22 --script="banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp22/tcp_22_ssh_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp22/xml/tcp_22_ssh_nmap.xml" 10.10.10.3

enum4linux -a -M -l -d 10.10.10.3 2>&1

nbtscan -rvh 10.10.10.3 2>&1

smbclient -L //10.10.10.3 -N -I 10.10.10.3 2>&1

nmap -vv --reason -Pn -T4 -sV -p 139 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/tcp_139_smb_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp139/xml/tcp_139_smb_nmap.xml" 10.10.10.3

smbmap -H 10.10.10.3 -P 139 2>&1

nmap -vv --reason -Pn -T4 -sV -p 445 --script="banner,(nbstat or smb* or ssl*) and not (brute or broadcast or dos or external or fuzzer)" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/tcp_445_smb_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp445/xml/tcp_445_smb_nmap.xml" 10.10.10.3

smbmap -H 10.10.10.3 -P 445 2>&1

nmap -vv --reason -Pn -T4 -sV -p 3632 --script="banner,distcc-cve2004-2687" --script-args="distcc-cve2004-2687.cmd=id" -oN "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/tcp_3632_distcc_nmap.txt" -oX "/HTB-boxes/lame/misc-tools/autorecon/10.10.10.3/scans/tcp3632/xml/tcp_3632_distcc_nmap.xml" 10.10.10.3

smbmap -u null -p "" -H 10.10.10.3 -P 445 2>&1

smbmap -H 10.10.10.3 -P 445 -R 2>&1

smbmap -u null -p "" -H 10.10.10.3 -P 139 2>&1

smbmap -u null -p "" -H 10.10.10.3 -P 445 -R 2>&1

smbmap -H 10.10.10.3 -P 445 -x "ipconfig /all" 2>&1

smbmap -H 10.10.10.3 -P 139 -R 2>&1

smbmap -u null -p "" -H 10.10.10.3 -P 445 -x "ipconfig /all" 2>&1

smbmap -u null -p "" -H 10.10.10.3 -P 139 -R 2>&1

smbmap -H 10.10.10.3 -P 139 -x "ipconfig /all" 2>&1

smbmap -u null -p "" -H 10.10.10.3 -P 139 -x "ipconfig /all" 2>&1


```