#!/bin/sh
#
# backup dokuwiki web site.
#

BACKUP_DIRECTORY="$HOME/Dropbox/backup/dokuwiki/"`date +'%Y%m%d'`
DOKUWIKI_DIRECTORY="$HOME/work/docker/php/dokuwiki"

BACKUP_TARGET_DIRECTORIES=" \
  $DOKUWIKI_DIRECTORY/data/pages \
  $DOKUWIKI_DIRECTORY/data/meta \
  $DOKUWIKI_DIRECTORY/data/media \
  $DOKUWIKI_DIRECTORY/data/media_attic \
  $DOKUWIKI_DIRECTORY/data/media_meta \
  $DOKUWIKI_DIRECTORY/data/attic \
  $DOKUWIKI_DIRECTORY/conf \
  "

if [ ! -d $DOKUWIKI_DIRECTORY ] ; then
    echo Backup directory is not exist : $DOKUWIKI_DIRECTORY
    exit
fi

mkdir -p $BACKUP_DIRECTORY
tar jcfh $BACKUP_DIRECTORY/dokuwiki.tar.bz2 $BACKUP_TARGET_DIRECTORIES
echo Done : $BACKUP_DIRECTORY
