

### Setup ENV

```bash
. ./box_vars.sh
```

### Port Scans

```bash
rustscan -a 10.10.10.3

sudo masscan -p0-65535 10.10.10.3 --max-rate 1000 -oG /HTB-boxes/lame/recon/masscan-tcp.md -e tun0
sudo masscan -pU:0-65535 10.10.10.3 --max-rate 1000 -oG /HTB-boxes/lame/recon/masscan-udp.md -e tun0

sudo python3 /opt/AutoRecon/autorecon.py 10.10.10.3 -p $init_ports -o /HTB-boxes/lame/misc-tools/autorecon/

nmap -vvv -Pn -p $init_ports -sC -sV -oN /HTB-boxes/lame/recon/nmap_all_tcp.md 10.10.10.3
sudo nmap -vvv -Pn -sU -p $init_ports -sC -sV -oN /HTB-boxes/lame/recon/nmap_all_udp.md 10.10.10.3
nmap -vvv -Pn -p $init_ports --script vuln -oN /HTB-boxes/lame/recon/nmap_all_vuln.md 10.10.10.3

nmap -Pn -vvv -p- -A -oN /HTB-boxes/lame/recon/nmap_tcp_agress.md 10.10.10.3
sudo nmap -Pn -vvv -sU -p- -A -oN /HTB-boxes/lame/recon/nmap_udp_agress.md 10.10.10.3
```

### General Enum

```bash
smbmap -H 10.10.10.3 | tee /HTB-boxes/lame/enum/smb/smbmap1.md
smbmap -H 10.10.10.3 -u anonymous -p \'\' | tee /HTB-boxes/lame/enum/smb/smbmap2.md

enum4linux -a 10.10.10.3 | tee /HTB-boxes/lame/enum/enum4linux.md
```

### Basic Web Enumeration

```bash

whatweb 10.10.10.3 | tee /HTB-boxes/lame/enum/web/whatweb_ip.md
whatweb lame.htb | tee /HTB-boxes/lame/enum/web/whatweb_host.md

nikto -h 10.10.10.3 -port $web1 -o /HTB-boxes/lame/enum/web/nikto_ip.md  

cewl -d 10 -m 5 -w /HTB-boxes/lame/enum/web/cewl_words_5.md $ipurl 
cewl -d 10 -m 5 -w /HTB-boxes/lame/enum/web/cewl_words_5.md $hosturl 
cewl -d 10 -m 8 -w /HTB-boxes/lame/enum/web/cewl_words_8.md $ipurl 
cewl -d 10 -m 8 -w /HTB-boxes/lame/enum/web/cewl_words_8.md $hosturl 

python3 /opt/Photon/photon.py -u $ipurl -l 5 -t 100 -o /HTB-boxes/lame/misc-tools/photon/
python3 /opt/Photon/photon.py -u $hosturl -l 5 -t 100 -o /HTB-boxes/lame/misc-tools/photon/


wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -f cli-no-color -o /HTB-boxes/lame/enum/web/wpscan_ip.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -f cli-no-color -o /HTB-boxes/lame/enum/web/wpscan_host.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_ip_brute.md

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_host_brute.md


nuclei -v -t dns -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/dns.md
nuclei -v -t dns -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/dns.md
nuclei -v -t cves -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/cves.md
nuclei -v -t cves -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/cves.md
nuclei -v -t cnvd -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/cnvd.md
nuclei -v -t cnvd -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/cnvd.md
nuclei -v -t takeovers -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/takeovers.md
nuclei -v -t takeovers -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/takeovers.md
nuclei -v -t vulnerabilities -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/vulnerabilities.md
nuclei -v -t vulnerabilities -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/vulnerabilities.md
nuclei -v -t file -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/file.md
nuclei -v -t file -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/file.md
nuclei -v -t fuzzing -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/fuzzing.md
nuclei -v -t fuzzing -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/fuzzing.md
nuclei -v -t miscellaneous -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/miscellaneous.md
nuclei -v -t miscellaneous -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/miscellaneous.md
nuclei -v -t exposed-panels -u $ipurl -o /HTB-boxes/lame/misc-tools/nuclei/exposed-panels.md
nuclei -v -t exposed-panels -u $hosturl -o /HTB-boxes/lame/misc-tools/nuclei/exposed-panels.md

gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -o /HTB-boxes/lame/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/lame/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/lame/enum/web/gob_files_priority.md 

```

### Reporting

```
./report_gen.sh
```

