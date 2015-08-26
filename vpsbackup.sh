#!/bin/bash
#=======================================================================================================================
# VPS Backup Script by Shubhamoy
# This script will compress your webroot and add a database dump. After that it can transfer the file to another server
# Send your queries at shubhamoy[at]kalakhatta.com
#=======================================================================================================================
DATE=$(date +"%Y%m%d")
MYSQLDUMP="$(which mysqldump)"
TAR="$(which tar)"
PASS="Enter your MySQL Password"
$MYSQLDUMP -u root -h localhost -p$PASS dbname > sqldump$DATE.sql
# Configure the path for your web directory
# Apache Default Web Root: /var/www
# nGinx Default Web Root: /usr/share/nginx/html
$TAR -zcvf $DATE.tar /var/www
$TAR -rvf DATE.tar sqldump$DATE.sql
scp $DATE.tar user@remote-host:directory
rm -rf !($DATE.tar | sqldump$DATE.sql | vpsbackup.sh)
