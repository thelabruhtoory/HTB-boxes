```bash
nmap -vv --reason -Pn -T4 -sU -A --osscan-guess -p 22,80,1337 -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_custom_ports_udp_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_custom_ports_udp_nmap.xml" 10.10.11.125

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p 22,80,1337 -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/_full_tcp_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/xml/_full_tcp_nmap.xml" 10.10.11.125

nmap -vv --reason -Pn -T4 -sV -p 22 --script="banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods" -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp22/tcp_22_ssh_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp22/xml/tcp_22_ssh_nmap.xml" 10.10.11.125

feroxbuster -u http://10.10.11.125:80/ -t 10 -w /root/.config/AutoRecon/wordlists/dirbuster.txt -x "txt,html,php,asp,aspx,jsp" -v -k -n -q -e -o "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt"

nmap -vv --reason -Pn -T4 -sV -p 80 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_nmap.txt" -oX "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/xml/tcp_80_http_nmap.xml" 10.10.11.125

curl -sSikf http://10.10.11.125:80/robots.txt

curl -sSik http://10.10.11.125:80/

curl -sSikf http://10.10.11.125:80/.well-known/security.txt

whatweb --color=never --no-errors -a 3 -v http://10.10.11.125:80 2>&1

wkhtmltoimage --format png http://10.10.11.125:80/ /HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_screenshot.png


```