https://github.com/Arrexel/phpbash


```bash
dirb bashed.htb -X .txt,.sh,.php,.pl,.py,.xml,.bak -o /HTB-boxes/bashed/enum/web/dirb_host_ext.md
```

```txt
---- Scanning URL: http://bashed.htb:80/ ----
+ http://bashed.htb:80/config.php (CODE:200|SIZE:0)
```




```bash
dirb 10.10.10.68 -o /HTB-boxes/bashed/enum/web/dirb_ip.md
```

```txt
...

==> DIRECTORY: http://10.10.10.68:80/dev/

...

==> DIRECTORY: http://10.10.10.68:80/php/
```

![[found_php_dir.png]]


![[dev_directory.png]]

![[have_a_primative_shell.png]]

