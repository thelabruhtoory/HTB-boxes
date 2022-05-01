### Web server

```bash
nmap -vvv -Pn -p 80,53,22,53 -sC -sV -oN /HTB-boxes/Cronos/recon/nmap_all_tcp.md 10.10.10.13
```


```txt

...

80/tcp open  http    syn-ack Apache httpd 2.4.18 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD OPTIONS
|_http-title: Cronos
|_http-server-header: Apache/2.4.18 (Ubuntu)
|_http-favicon: Unknown favicon MD5: D41D8CD98F00B204E9800998ECF8427E
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

...


```