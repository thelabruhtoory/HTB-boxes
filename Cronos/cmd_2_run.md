

### Setup ENV

```bash
. ./box_vars.sh
```

### Port Scans

```bash
rustscan -a 10.10.10.13

sudo masscan -p0-65535 10.10.10.13 --max-rate 1000 -oG /HTB-boxes/Cronos/recon/masscan-tcp.md -e tun0
sudo masscan -pU:0-65535 10.10.10.13 --max-rate 1000 -oG /HTB-boxes/Cronos/recon/masscan-udp.md -e tun0


sudo python3 /opt/AutoRecon/autorecon.py 10.10.10.13 -p $all_ports -o /HTB-boxes/Cronos/misc-tools/autorecon/

nmap -vvv -Pn -p $all_ports -sC -sV -oN /HTB-boxes/Cronos/recon/nmap_all_tcp.md 10.10.10.13
sudo nmap -vvv -Pn -sU -p $all_ports -sC -sV -oN /HTB-boxes/Cronos/recon/nmap_all_udp.md 10.10.10.13
nmap -vvv -Pn -p $all_ports --script vuln -oN /HTB-boxes/Cronos/recon/nmap_all_vuln.md 10.10.10.13


nmap -Pn -vvv -p- -A -oN /HTB-boxes/Cronos/recon/nmap_tcp_agress.md 10.10.10.13
sudo nmap -Pn -vvv -sU -p- -A -oN /HTB-boxes/Cronos/recon/nmap_udp_agress.md 10.10.10.13
```

### General Enum - ftp & smb

```bash
smbmap -H 10.10.10.13 | tee /HTB-boxes/Cronos/enum/smb/smbmap1.md
smbmap -H 10.10.10.13 -u anonymous -p \'\' | tee /HTB-boxes/Cronos/enum/smb/smbmap2.md

smbclient \\${box_ip}\sharename

enum4linux -a 10.10.10.13 | tee /HTB-boxes/Cronos/enum/enum4linux.md
```

### Basic Web Enum

```bash

whatweb 10.10.10.13 | tee /HTB-boxes/Cronos/enum/web/whatweb_ip.md
whatweb cronos.htb | tee /HTB-boxes/Cronos/enum/web/whatweb_host.md

nikto -h 10.10.10.13 -port $web1 -o /HTB-boxes/Cronos/enum/web/nikto_ip.txt  


for i in {5..10}; do
	touch /HTB-boxes/Cronos/misc-tools/cewl/cewl_ip_${i}.md
	touch /HTB-boxes/Cronos/misc-tools/cewl/cewl_words_host_${i}.md
	cewl -d 10 -m $i -w /HTB-boxes/Cronos/misc-tools/cewl/cewl_ip_${i}.md $ipurl 
	cewl -d 10 -m $i -w /HTB-boxes/Cronos/misc-tools/cewl/cewl_words_host_${i}.md $hosturl 
done

```

### WP-scan

```

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://10.10.10.13/ -f cli-no-color -o /HTB-boxes/Cronos/enum/web/wpscan_ip.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://cronos.htb/ -f cli-no-color -o /HTB-boxes/Cronos/enum/web/wpscan_host.md  --enumerate u,m,ap,at,tt,cb,dbe --plugins-detection mixed

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://10.10.10.13/ -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_ip_brute.md

wpscan --api-token 8PWrA2g8XG5qRSy5Ul1QRZ1bPDMzs3ZTLsRau6KNomU --url http://cronos.htb/ -U enum/box_users.md -P /usr/share/wordlists/rockyou.txt -o enum/web/wpscan_host_brute.md

```

### auto-tools

```

export tpls=("dns" "cves" "cnvd" "takeovers" "vulnerabilities" "file" "fuzzing" "miscellaneous" "exposed-panels")
for tpl in ${tpls[@]}; do 
	nuclei -v -t $tpl -u http://10.10.10.13/ -o /HTB-boxes/Cronos/misc-tools/nuclei/${tpl}.md
	nuclei -v -t $tpl -u http://cronos.htb/ -o /HTB-boxes/Cronos/misc-tools/nuclei/${tpl}.md
done

python3 /opt/Photon/photon.py -u http://10.10.10.13/ -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/Cronos/misc-tools/photon_ip/
python3 /opt/Photon/photon.py -u http://cronos.htb/ -l 10 --dns --clone --headers --keys -v -o /HTB-boxes/Cronos/misc-tools/photon_host/

```


### Directory Brute Forcing

**HTTP**

```

dirb http://10.10.10.13/ -o /HTB-boxes/Cronos/enum/web/dirb_ip.md
dirb http://10.10.10.13/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/Cronos/enum/web/dirb_ip_ext.md
dirb http://cronos.htb/ -o /HTB-boxes/Cronos/enum/web/dirb_host.md
dirb http://cronos.htb/ -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/Cronos/enum/web/dirb_host_ext.md

gobuster dir -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/Cronos/enum/web/gob_dir.md
gobuster dir -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/Cronos/enum/web/gob_files.md
gobuster dir -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/Cronos/enum/web/gob_files_priority.md
gobuster dir -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/Cronos/enum/web/gob_dir.md
gobuster dir -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/Cronos/enum/web/gob_files.md
	gobuster dir -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/Cronos/enum/web/gob_files_priority.md
```

**HTTPS**

```
gobuster dir -k -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/Cronos/enum/web/gob_dir.md
gobuster dir -k -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/Cronos/enum/web/gob_files.md
gobuster dir -k -u http://10.10.10.13/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/Cronos/enum/web/gob_files_priority.md
gobuster dir -k -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o /HTB-boxes/Cronos/enum/web/gob_dir.md
gobuster dir -k -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,php,xml,csv,dat,pdf,doc,docx,ppt,pptx,xlr,xls,xlsx,db,dbf,mdb,pdb,sql,apk,jar,exe,7z,rar,tar.gz,zip,c,cpp,cs,h,sh,vb,vbs,pl,lua,java,py,bak,tmp -o /HTB-boxes/Cronos/enum/web/gob_files.md
gobuster dir -k -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x log,txt,pdf,xml,csv,bak,php,pl -o /HTB-boxes/Cronos/enum/web/gob_files_priority.md
```

### Reporting

```
./report_gen.sh
```


