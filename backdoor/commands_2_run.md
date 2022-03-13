

### Setup Environment

```bash
export init_ports=$(rustscan -ga 10.10.11.125 | cut -f2 -d "[" | cut -f1 -d "]")
sed -i "s+init_ports=+init_ports=${init_ports}+gi" /HTB-boxes/backdoor/box_vars.sh
export aip=$(ip a s | grep tun0 | grep inet | cut -f2 -d "t" | cut -f2 -d " " | cut -f1 -d "/")
sed -i "s+attack_ip=+attack_ip=${aip}+gi" /HTB-boxes/backdoor/box_vars.sh
export nsu=$(ip a s | grep tun0 | grep inet | cut -f2 -d "t" | cut -f2 -d " " | cut -f2 -d "/")
sed -i "s+net_subnet=+net_subnet=${nsu}+gi" /HTB-boxes/backdoor/box_vars.sh
ipurl="http://10.10.11.125:80/"
hosturl="http://backdoor.HTB-boxes:80/"
sed -i "s+ipurl=+ipurl=${ipurl}+gi" /HTB-boxes/backdoor/box_vars.sh
sed -i "s+hosturl=+hosturl=${hosturl}+gi" /HTB-boxes/backdoor/box_vars.sh
```

### Port Scans

```bash
rustscan -a 10.10.11.125

sudo python3 /opt/AutoRecon/autorecon.py 10.10.11.125 -p $init_ports -o /HTB-boxes/backdoor/autorecon/

nmap -vvv -p $init_ports -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_init_tcp.md 10.10.11.125
nmap -vvv -Pn -p $init_ports -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_init_pn_tcp.md 10.10.11.125

sudo nmap -vvv -sU -p $init_ports -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_init_udp.md 10.10.11.125

nmap -vvv -p $init_ports --script vuln -oN /HTB-boxes/backdoor/recon/nmap_init_vuln.md 10.10.11.125
nmap -vvv -p- -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_tcp_all.md 10.10.11.125
nmap -vvv -p- -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_pn_tcp_all.md 10.10.11.125

sudo nmap -vvv -sU -p- -sC -sV -oN /HTB-boxes/backdoor/recon/nmap_udp_all.md 10.10.11.125
```

### General Enum

```bash
smbmap -H 10.10.11.125 | tee /HTB-boxes/backdoor/enum/smb/smbmap1.md
smbmap -H 10.10.11.125 -u anonymous -p \'\' | tee /HTB-boxes/backdoor/enum/smb/smbmap1.md
enum4linux -a 10.10.11.125 | tee /HTB-boxes/backdoor/enum/enum4linux.md
```

### Basic Web Enumeration

```bash
whatweb 10.10.11.125 | tee /HTB-boxes/backdoor/enum/web/whatweb_ip.md
whatweb backdoor.HTB-boxes | tee /HTB-boxes/backdoor/enum/web/whatweb_host.md

nikto -h 10.10.11.125 -port $web1 -o /HTB-boxes/backdoor/enum/web/nikto_ip.md 

cewl -d 10 -m 5 -w /HTB-boxes/backdoor/enum/web/cewl_words_5.md $ipurl 
cewl -d 10 -m 5 -w /HTB-boxes/backdoor/enum/web/cewl_words_5.md $hosturl 
cewl -d 10 -m 8 -w /HTB-boxes/backdoor/enum/web/cewl_words_8.md $ipurl 
cewl -d 10 -m 8 -w /HTB-boxes/backdoor/enum/web/cewl_words_8.md $hosturl 

python3 /opt/Photon/photon.py -u $ipurl -l 5 -t 100 -o enum/web/ 
python3 /opt/Photon/photon.py -u $hosturl -l 5 -t 100 -o enum/web/  


wpscan --url $ipurl --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU -f cli-no-color -o enum/web/wpscan_ip.md  --enumerate u,m,p,t,tt,cb,dbe

wpscan --url $ipurl --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU -U enum/users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_ip_brute.md

wpscan --url $hosturl --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU -f cli-no-color -o enum/web/wpscan_host.md  --enumerate u,m,p,t,tt,cb,dbe

wpscan --url $hosturl --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU -U enum/users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_host_brute.md



nuclei -v -t "dns" -u $ipurl -o nuclei/1.md
nuclei -v -t "dns" -u $hosturl -o nuclei/2.md
nuclei -v -t "cves" -u $ipurl -o nuclei/3.md
nuclei -v -t "cves" -u $hosturl -o nuclei/4.md
nuclei -v -t "cnvd" -u $ipurl -o nuclei/5.md
nuclei -v -t "cnvd" -u $hosturl -o nuclei/6.md
nuclei -v -t "takeovers" -u $ipurl -o nuclei/7.md
nuclei -v -t "takeovers" -u $hosturl -o nuclei/8.md
nuclei -v -t "vulnerabilities" -u $ipurl -o nuclei/9.md
nuclei -v -t "vulnerabilities" -u $hosturl -o nuclei/10.md
nuclei -v -t "file" -u $ipurl -o nuclei/11.md
nuclei -v -t "file" -u $hosturl -o nuclei/12.md
nuclei -v -t "fuzzing" -u $ipurl -o nuclei/13.md
nuclei -v -t "fuzzing" -u $hosturl -o nuclei/14.md
nuclei -v -t "miscellaneous" -u $ipurl -o nuclei/15.md
nuclei -v -t "miscellaneous" -u $hosturl -o nuclei/16.md
nuclei -v -t "exposed-panels" -u $ipurl -o nuclei/17.md
nuclei -v -t "exposed-panels" -u $hosturl -o nuclei/18.md


gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /usr/share/wordlists/dirb/big.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /usr/share/wordlists/dirb/big.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $ipurl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -o /HTB-boxes/backdoor/enum/web/gob_dir.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/backdoor/enum/web/gob_files.md 

gobuster dir -u $hosturl -w /opt/SecLists/Discovery/Web-Content/common.txt -x log,txt,pdf,xml,csv,bak,php -o /HTB-boxes/backdoor/enum/web/gob_files_priority.md 

```

### Reporting

```
./report_gen.sh
```