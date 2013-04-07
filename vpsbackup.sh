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
$TAR -cvf $DATE.tar /var/www
$TAR -rvf DATE.tar sqldump$DATE.sql
scp $DATE.tar user@remote-host:directory
rm -rf *.tar
rm -rf *.sql
