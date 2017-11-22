# VPS Backup Script 

A script which automates the backup process for a Linux based Web Server.

## Steps Involved
* Dumps the MySQL/MongoDB Database
* Archives the Document Root Directory
* Appends the MySQL Dump to the Archive
* Moves it to another server(optional)
* Removes the Intermediary/Old Files

## Configuration
Read the ![guide](helper.md) for setting up the script correctly.

Now set a cronjob so that the backup process is automated. Here's a crontab entry which would execute the backup script every Sunday.
`$> crontab -e`
`0 0 * * 0 bash /home/backup/vpsback.sh >/dev/null 2>&1`

If everything goes well then this script shall execute all the above mentioned steps and automatically transfer the tarball to your backup server.

## Queries
Drop a mail at me@shubhamoy.com

## Request
Feel free to add your suggestions to the helper.md and send me a PR. 
