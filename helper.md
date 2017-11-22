# Guide for Obtaining Parameters Manually

## Find Apache's Document Root
Normally the configuration file is stored in /etc/apache2/httpd.conf or /etc/httpd/conf/httpd.conf
Execute the following command(s) when you are inside Apache configuration directory. This would return the DocumentRoot directory. You can cross check to be doubly sure.

```grep -i 'DocumentRoot' httpd.conf```
OR
```grep -R "DocumentRoot" sites-enabled```

## Find nGINX's Document Root
Execute the following command when you are inside the nginx directory(/etc/nginx/)
```grep -R "DocumentRoot sites-enabled```

## Find MySQL's mysqldump Path
```which mysqldump```

## Find MongoDB's mongodump Path
```which mongodump```

## Using mongodump
```sudo mongodump --db newdb --out /var/backups/mongobackups/`date +"%m-%d-%y"````

## Setup Auto Transfer of Backup File
You need to setup a SSH based Passwordless Login from your machine to your backup machine. Read this tutorial for creating a passwordless login [link1](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2) and [link2](http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/).

