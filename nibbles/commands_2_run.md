

### Setup ENV

```bash
. ./box_vars.sh
```

### Port Scans

```bash
rustscan -a 10.10.10.75

sudo masscan -p0-65535 10.10.10.75 --max-rate 1000 -oG /HTB-boxes/nibbles/recon/masscan-tcp.md -e tun0
sudo masscan -pU:0-65535 10.10.10.75 --max-rate 1000 -oG /HTB-boxes/nibbles/recon/masscan-udp.md -e tun0

sudo python3 /opt/AutoRecon/autorecon.py 10.10.10.75 -p $init_ports -o /HTB-boxes/nibbles/misc-tools/autorecon/

nmap -vvv -Pn -p $all_ports -sC -sV -oN /HTB-boxes/nibbles/recon/nmap_all_tcp.md 10.10.10.75
sudo nmap -vvv -Pn -sU -p $all_ports -sC -sV -oN /HTB-boxes/nibbles/recon/nmap_all_udp.md 10.10.10.75
nmap -vvv -Pn -p $all_ports --script vuln -oN /HTB-boxes/nibbles/recon/nmap_all_vuln.md 10.10.10.75

nmap -Pn -vvv -p- -A -oN /HTB-boxes/nibbles/recon/nmap_tcp_agress.md 10.10.10.75
sudo nmap -Pn -vvv -sU -p- -A -oN /HTB-boxes/nibbles/recon/nmap_udp_agress.md 10.10.10.75
```

### General Enum - ftp & smb

```bash
smbmap -H 10.10.10.75 | tee /HTB-boxes/nibbles/enum/smb/smbmap1.md
smbmap -H 10.10.10.75 -u anonymous -p \'\' | tee /HTB-boxes/nibbles/enum/smb/smbmap2.md

smbclient \\${box_ip}\sharename

enum4linux -a 10.10.10.75 | tee /HTB-boxes/nibbles/enum/enum4linux.md
```

### Web Enum

```bash

whatweb 10.10.10.75 | tee /HTB-boxes/nibbles/enum/web/whatweb_ip.md
whatweb nibbles.htb | tee /HTB-boxes/nibbles/enum/web/whatweb_host.md

nikto -h 10.10.10.75 -port $web1 -o /HTB-boxes/nibbles/enum/web/nikto_ip.txt  

cewl -d 10 -m 5 -w /HTB-boxes/nibbles/enum/web/cewl_words_ip_5.md $ipurl 
cewl -d 10 -m 5 -w /HTB-boxes/nibbles/enum/web/cewl_words_host_5.md $hosturl 
cewl -d 10 -m 8 -w /HTB-boxes/nibbles/enum/web/cewl_words_ip_8.md $ipurl 
cewl -d 10 -m 8 -w /HTB-boxes/nibbles/enum/web/cewl_words_host_8.md $hosturl 



python3 /opt/Photon/photon.py -u $ipurl -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/nibbles/misc-tools/photon_ip/
python3 /opt/Photon/photon.py -u $hosturl -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/nibbles/misc-tools/photon_host/



wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -f cli-no-color -o /HTB-boxes/nibbles/enum/web/wpscan_ip.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -f cli-no-color -o /HTB-boxes/nibbles/enum/web/wpscan_host.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_ip_brute.md

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url  -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_host_brute.md



dirb $ipurl -o /HTB-boxes/nibbles/enum/web/dirb_ip.md
dirb $ipurl -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/nibbles/enum/web/dirb_ip_ext.md

dirb $hosturl -o /HTB-boxes/nibbles/enum/web/dirb_host.md
dirb $hosturl -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/nibbles/enum/web/dirb_host_ext.md


export tpls=("dns" "cves" "cnvd" "takeovers" "vulnerabilities" "file" "fuzzing" "miscellaneous" "exposed-panels")
for tpl in ${tpls[@]}; do 
	nuclei -v -t  -u $ipurl -o /HTB-boxes/nibbles/misc-tools/nuclei/${tpl}.md
	nuclei -v -t  -u $hosturl -o /HTB-boxes/nibbles/misc-tools/nuclei/${tpl}.md
done


export wordlists=("/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt" "/usr/share/wordlists/dirb/big.txt" "/opt/SecLists/Discovery/Web-Content/common.txt")
for wordlist in ${wordlists[@]}; do
	gobuster dir -u $ipurl -w  -o /HTB-boxes/nibbles/enum/web/gob_dir.md
	gobuster dir -u $ipurl -w  -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/nibbles/enum/web/gob_files.md
	gobuster dir -u $ipurl -w  -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/nibbles/enum/web/gob_files_priority.md
	gobuster dir -u $hosturl -w  -o /HTB-boxes/nibbles/enum/web/gob_dir.md
	gobuster dir -u $hosturl -w  -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/nibbles/enum/web/gob_files.md
	gobuster dir -u $hosturl -w  -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/nibbles/enum/web/gob_files_priority.md
done




```

### Reporting

```
./report_gen.sh
```

