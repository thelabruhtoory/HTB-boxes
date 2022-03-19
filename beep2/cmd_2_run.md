

### Setup ENV

```bash
. ./box_vars.sh
```

### Port Scans

```bash
rustscan -a 10.10.10.7

sudo masscan -p0-65535 10.10.10.7 --max-rate 1000 -oG /HTB-boxes/beep2/recon/masscan-tcp.md -e tun0
sudo masscan -pU:0-65535 10.10.10.7 --max-rate 1000 -oG /HTB-boxes/beep2/recon/masscan-udp.md -e tun0


sudo python3 /opt/AutoRecon/autorecon.py 10.10.10.7 -p $all_ports -o /HTB-boxes/beep2/misc-tools/autorecon/

nmap -vvv -Pn -p $all_ports -sC -sV -oN /HTB-boxes/beep2/recon/nmap_all_tcp.md 10.10.10.7
sudo nmap -vvv -Pn -sU -p $all_ports -sC -sV -oN /HTB-boxes/beep2/recon/nmap_all_udp.md 10.10.10.7
nmap -vvv -Pn -p $all_ports --script vuln -oN /HTB-boxes/beep2/recon/nmap_all_vuln.md 10.10.10.7


nmap -Pn -vvv -p- -A -oN /HTB-boxes/beep2/recon/nmap_tcp_agress.md 10.10.10.7
sudo nmap -Pn -vvv -sU -p- -A -oN /HTB-boxes/beep2/recon/nmap_udp_agress.md 10.10.10.7
```

### General Enum - ftp & smb

```bash
smbmap -H 10.10.10.7 | tee /HTB-boxes/beep2/enum/smb/smbmap1.md
smbmap -H 10.10.10.7 -u anonymous -p \'\' | tee /HTB-boxes/beep2/enum/smb/smbmap2.md

smbclient \\${box_ip}\sharename

enum4linux -a 10.10.10.7 | tee /HTB-boxes/beep2/enum/enum4linux.md
```

### Web Enum

```bash

whatweb 10.10.10.7 | tee /HTB-boxes/beep2/enum/web/whatweb_ip.md
whatweb beep2.htb | tee /HTB-boxes/beep2/enum/web/whatweb_host.md

nikto -h 10.10.10.7 -port $web1 -o /HTB-boxes/beep2/enum/web/nikto_ip.txt  


for i in {5..10}; do
	cewl -d 10 -m $i -w /HTB-boxes/beep2/enum/misc-tools/cewl/cewl_ip_${i}.md http://10.10.10.7/ 
	cewl -d 10 -m $i -w /HTB-boxes/beep2/enum/misc-tools/cewl/cewl_words_host_${i}.md http://beep2.htb/ 
done


python3 /opt/Photon/photon.py -u http://10.10.10.7/ -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/beep2/misc-tools/photon_ip/
python3 /opt/Photon/photon.py -u http://beep2.htb/ -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/beep2/misc-tools/photon_host/

dirb http://10.10.10.7/ -o /HTB-boxes/beep2/enum/web/dirb_ip.md
dirb http://10.10.10.7/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/beep2/enum/web/dirb_ip_ext.md

dirb http://beep2.htb/ -o /HTB-boxes/beep2/enum/web/dirb_host.md
dirb http://beep2.htb/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/beep2/enum/web/dirb_host_ext.md



wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://10.10.10.7/ -f cli-no-color -o /HTB-boxes/beep2/enum/web/wpscan_ip.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://beep2.htb/ -f cli-no-color -o /HTB-boxes/beep2/enum/web/wpscan_host.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://10.10.10.7/ -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_ip_brute.md

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://beep2.htb/ -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_host_brute.md

export tpls=("dns" "cves" "cnvd" "takeovers" "vulnerabilities" "file" "fuzzing" "miscellaneous" "exposed-panels")
for tpl in ${tpls[@]}; do 
	nuclei -v -t  -u http://10.10.10.7/ -o /HTB-boxes/beep2/misc-tools/nuclei/${tpl}.md
	nuclei -v -t  -u http://beep2.htb/ -o /HTB-boxes/beep2/misc-tools/nuclei/${tpl}.md
done


export wordlists=("/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt" "/usr/share/wordlists/dirb/big.txt" "/opt/SecLists/Discovery/Web-Content/common.txt")
for wordlist in ${wordlists[@]}; do
	gobuster dir -u http://10.10.10.7/ -w  -o /HTB-boxes/beep2/enum/web/gob_dir.md
	gobuster dir -u http://10.10.10.7/ -w  -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/beep2/enum/web/gob_files.md
	gobuster dir -u http://10.10.10.7/ -w  -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/beep2/enum/web/gob_files_priority.md
	gobuster dir -u http://beep2.htb/ -w  -o /HTB-boxes/beep2/enum/web/gob_dir.md
	gobuster dir -u http://beep2.htb/ -w  -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/beep2/enum/web/gob_files.md
	gobuster dir -u http://beep2.htb/ -w  -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/beep2/enum/web/gob_files_priority.md
done




```

### Reporting

```
./report_gen.sh
```

