#!/bin/bash
#=======================================================================================================================
# VPS Backup Script by Shubhamoy
# Send your queries at shubhamoy[at]kalakhatta.com
#=======================================================================================================================
DATE=$(date +"%Y%m%d")
MYSQLDUMP="$(which mysqldump)"
TAR="$(which tar)"
PASS="Enter your MySQL Password"
$MYSQLDUMP -u root -h localhost -p$PASS dbname > sqldump$DATE.sql
$TAR -zcvf $DATE.tar /var/www
$TAR -rvf DATE.tar sqldump$DATE.sql
scp $DATE.tar user@remote-host:directory
#Issue: 1 Thanks to johnwbyrd. Basically this was added to remove the backup files. 
#rm -rf *.tar
#rm -rf *.sql
