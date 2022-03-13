```bash
feroxbuster -u http://10.10.11.125:80/ -t 10 -w /root/.config/AutoRecon/wordlists/dirbuster.txt -x "txt,html,php,asp,aspx,jsp" -v -k -n -q -e -o "/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt"
```

[/HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt](file:///HTB-boxes/backdoor/autorecon/10.10.11.125/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt):

```
301      GET        0l        0w        0c http://10.10.11.125/index.php/ => http://10.10.11.125/
200      GET      369l     2389w   114854c http://10.10.11.125/wp-content/themes/twentyseventeen/assets/images/header.jpg
200      GET      109l      420w     3760c http://10.10.11.125/wp-content/themes/twentyseventeen/assets/js/navigation.js
200      GET       31l       90w      683c http://10.10.11.125/wp-content/themes/twentyseventeen/assets/js/skip-link-focus-fix.js
200      GET      252l      945w     7842c http://10.10.11.125/wp-content/themes/twentyseventeen/assets/js/global.js
200      GET        3l     1295w    89521c http://10.10.11.125/wp-includes/js/jquery/jquery.min.js
500      GET        0l        0w        0c http://10.10.11.125/wp-content/themes/twentyseventeen/
200      GET      209l      846w     5836c http://10.10.11.125/wp-content/themes/twentyseventeen/assets/js/jquery.scrollTo.js
200      GET        2l       15w     1426c http://10.10.11.125/wp-includes/js/wp-embed.min.js
200      GET        2l      378w    11224c http://10.10.11.125/wp-includes/js/jquery/jquery-migrate.min.js
403      GET        9l       28w      277c http://10.10.11.125/.hta
403      GET        9l       28w      277c http://10.10.11.125/.hta.txt
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd
403      GET        9l       28w      277c http://10.10.11.125/.htaccess
403      GET        9l       28w      277c http://10.10.11.125/.hta.html
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.txt
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.txt
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.html
403      GET        9l       28w      277c http://10.10.11.125/.hta.php
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.html
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.php
403      GET        9l       28w      277c http://10.10.11.125/.hta.asp
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.php
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.asp
403      GET        9l       28w      277c http://10.10.11.125/.hta.aspx
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.asp
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.aspx
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.aspx
403      GET        9l       28w      277c http://10.10.11.125/.hta.jsp
403      GET        9l       28w      277c http://10.10.11.125/.htpasswd.jsp
403      GET        9l       28w      277c http://10.10.11.125/.htaccess.jsp
301      GET        0l        0w        0c http://10.10.11.125/index.php => http://10.10.11.125/
200      GET      384l     3177w    19915c http://10.10.11.125/license.txt
200      GET       17l       83w     1275c http://10.10.11.125/wp-admin/install.php
200      GET      379l      746w     5976c http://10.10.11.125/wp-admin/css/install.css?ver=20100228
200      GET       23l       80w     1245c http://10.10.11.125/wp-admin/upgrade.php
302      GET        0l        0w        0c http://10.10.11.125/wp-admin/ => http://10.10.11.125/wp-login.php?redirect_to=http%3A%2F%2F10.10.11.125%2Fwp-admin%2F&reauth=1
302      GET        0l        0w        0c http://10.10.11.125/wp-admin/update-core.php => http://10.10.11.125/wp-login.php?redirect_to=http%3A%2F%2F10.10.11.125%2Fwp-admin%2Fupdate-core.php&reauth=1
200      GET       99l      371w     5674c http://10.10.11.125/wp-login.php
200      GET       13l       78w     2480c http://10.10.11.125/wp-admin/images/wordpress-logo.png
302      GET        0l        0w        0c http://10.10.11.125/wp-admin/import.php => http://10.10.11.125/wp-login.php?redirect_to=http%3A%2F%2F10.10.11.125%2Fwp-admin%2Fimport.php&reauth=1
200      GET       97l      823w     7346c http://10.10.11.125/readme.html
403      GET        9l       28w      277c http://10.10.11.125/server-status
301      GET        9l       28w      315c http://10.10.11.125/wp-admin => http://10.10.11.125/wp-admin/
301      GET        9l       28w      317c http://10.10.11.125/wp-content => http://10.10.11.125/wp-content/
200      GET        0l        0w        0c http://10.10.11.125/wp-blog-header.php
200      GET        0l        0w        0c http://10.10.11.125/wp-config.php
200      GET        0l        0w        0c http://10.10.11.125/wp-cron.php
301      GET        9l       28w      318c http://10.10.11.125/wp-includes => http://10.10.11.125/wp-includes/
200      GET       11l       23w      223c http://10.10.11.125/wp-links-opml.php
200      GET        0l        0w        0c http://10.10.11.125/wp-load.php
403      GET      121l      293w     2616c http://10.10.11.125/wp-mail.php
200      GET        2l       75w     6080c http://10.10.11.125/wp-admin/js/user-profile.min.js
200      GET        1l      156w     6406c http://10.10.11.125/wp-includes/js/dist/vendor/regenerator-runtime.min.js
500      GET        0l        0w        0c http://10.10.11.125/wp-settings.php
302      GET        0l        0w        0c http://10.10.11.125/wp-signup.php => http://10.10.11.125/wp-login.php?action=register
200      GET        2l       29w     1123c http://10.10.11.125/wp-admin/js/password-strength-meter.min.js
200      GET        5l       15w      135c http://10.10.11.125/wp-trackback.php
200      GET        2l      205w     9866c http://10.10.11.125/wp-includes/js/dist/i18n.min.js
200      GET        2l       18w     1340c http://10.10.11.125/wp-includes/js/wp-util.min.js
200      GET        2l      171w     5440c http://10.10.11.125/wp-includes/js/dist/hooks.min.js
200      GET        7l      361w    16470c http://10.10.11.125/wp-includes/js/dist/vendor/wp-polyfill.min.js
200      GET        2l      505w    19076c http://10.10.11.125/wp-includes/js/underscore.min.js
200      GET        2l       10w      351c http://10.10.11.125/wp-includes/js/zxcvbn-async.min.js
405      GET        1l        6w       42c http://10.10.11.125/xmlrpc.php
302      GET        0l        0w        0c http://10.10.11.125/wp-activate.php => http://10.10.11.125/wp-login.php?action=register

```
