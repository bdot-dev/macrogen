#!/bin/sh
#
####################################
# DB Backup Script
####################################
#
#
export LANG=C
/usr/bin/rdate -s time.bora.net

# Date
today=$(date +%Y%m%d)
rmday=$(date +%Y%m%d -d '30 days ago')

# Backup PATH
PATH0="/home/backup/db_backup"
PATH1="/home/backup/db_backup/$today"


/bin/rm -rf $PATH0/$rmday-db.tar.gz

## Backup Script

/bin/mkdir $PATH1

############# DB Dump ####################################################################
# ����� DB �߰� ��
# ��) /usr/local/mysql/bin/mysqldump -uroot -p'Gh20!$DBp@SS' DB�� > $PATH1/$today-DB��.sql
##########################################################################################
## All DB
/usr/local/mysql/bin/mysqldump -uroot -p'Gh20!$DBp@SS' -A > $PATH1/$today-all.sql

## db_gh DB
/usr/local/mysql/bin/mysqldump -uroot -p'Gh20!$DBp@SS' db_gh > $PATH1/$today-db_gh.sql

## db_hh DB
/usr/local/mysql/bin/mysqldump -uroot -p'Gh20!$DBp@SS' db_hh > $PATH1/$today-db_hh.sql

##

##########################################################################################

cd $PATH0

/bin/tar cvzf $PATH0/$today-db.tar.gz $today

/bin/rm -rf $PATH1 
