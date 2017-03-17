# VPS Backup Script 

A script which automates the backup process for a simple linux based web server. 

# Features
* Dumps the MySQL Database
* Archives the www directory
* Appends the MySQL Dump to the archive
* Moves it to another server(optional)
* Removes the intermediary files


# Configuration
Only a little bit configuration is required for initiating the transfer between remote servers. 

Read [this tutorial](http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/) for creating public/private keys on Remote Server for SSH Login. This would automate the file transfer.

Now set a cronjob so that the backup process is automated. Here's a crontab entry which would execute the backup script every Sunday.

`0 0 * * 0 bash /home/backup/vpsback.sh >/dev/null 2>&1`

# Queries
Drop a mail at me@shubhamoy.com
