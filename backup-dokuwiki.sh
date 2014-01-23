#!/bin/sh
#
# backup dokuwiki web site.
#

BACKUP_DIRECTORY="$HOME/Dropbox/backup/dokuwiki/"`date +'%Y%m%d'`
DOKUWIKI_DIRECTORY="/usr/share/nginx/html/dokuwiki"

if [ ! -d $DOKUWIKI_DIRECTORY ] ; then
    echo Backup directory is not exist : $DOKUWIKI_DIRECTORY
    exit
fi

mkdir -p $BACKUP_DIRECTORY

tar jcfh $BACKUP_DIRECTORY/dokuwiki.tar.bz2 $DOKUWIKI_DIRECTORY

echo Done : $BACKUP_DIRECTORY
