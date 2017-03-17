#!/bin/bash
# VPS Backup Script by Shubhamoy
# https://github.com/shubhamoy/vpsbackup

DATE=$(date +"%Y%m%d")
MYSQLDUMP="$(which mysqldump)"
TAR="$(which tar)"
PASS="Enter your MySQL Password"

# Similarly other db dumps can be generated like mongodump
$MYSQLDUMP -u root -h localhost -p$PASS dbname > sqldump$DATE.sql

# Configure the path for your web directory
# Apache Default Web Root: /var/www or /home/www
# nGinx Default Web Root: /usr/share/nginx/html or /home/www

# Creating a tarball from the web directory
$TAR -cvf $DATE.tar /var/www

# Appending the db dump to the tarball
$TAR -rvf $DATE.tar sqldump$DATE.sql

# Move the backup to a different server
# scp 20170317.tar ubuntu@54.xxx.xxx.xxx:/home/backup/
scp $DATE.tar user@remote-host:directory

# Delete the tarball and the db dump
rm -rf !"($DATE.tar | sqldump$DATE.sql)"