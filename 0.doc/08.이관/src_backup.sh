#!/bin/sh
#
####################################
# WEB Source Backup Script
####################################
#
#
export LANG=C
/usr/bin/rdate -s time.bora.net

# Date
today=$(date +%Y%m%d)
rmday=$(date +%Y%m%d -d '30 days ago')

# Backup PATH
PATH0="/home/backup/src_backup"
PATH1="/home"
PATH2="/home/backup/src_backup/$today"

/bin/rm -rf $PATH0/$rmday-web_src.tar.gz

# Backup Script

/bin/mkdir $PATH2

cd $PATH1
#############################################################################
# ����� ���丮 �߰� ��
# ��) /bin/tar/ cvzf $PATH2/$today-������.tar.gz ����Ȩ���丮/�ҽ����丮 
#############################################################################
## galleryhyundai src
/bin/tar cvzf $PATH2/$today-galleryhyundai.tar.gz galleryhyundai/public_html

## hyundaihwarang src
/bin/tar cvzf $PATH2/$today-hyundaihwarang.tar.gz hyundaihwarang/public_html

##

#############################################################################

cd $PATH0
/bin/tar cvzf $PATH0/$today-web_src.tar.gz $today

/bin/rm -rf $today


