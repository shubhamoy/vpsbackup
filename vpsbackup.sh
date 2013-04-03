#!/bin/bash
#=======================================================================================================================
# VPS Backup Script by Shubhamoy
#
#=======================================================================================================================
rm -rf backup.sql
rm -rf backup.tar
MYSQLDUMP="$(which mysqldump)"
TAR="$(which tar)"
PASS="Enter your MySQL Password"
$MYSQLDUMP -u root -h localhost -p$PASS dbname > backup.sql
$TAR -cvf backup.tar /var/www
$TAR -rvf backup.tar backup.sql
rm -rf backup.sql
scp backup.tar user@remote-host:directory
