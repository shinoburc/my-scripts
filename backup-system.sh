#!/bin/sh
#
# backup system files
#

BACKUP_DIRECTORY="$HOME/Dropbox/backup/system/"`date +'%Y%m%d'`

mkdir -p $BACKUP_DIRECTORY

cp --parents /etc/nginx/sites-enabled/default $BACKUP_DIRECTORY/.
cp --parents /etc/varnish/default.vcl $BACKUP_DIRECTORY/.
cp --parents /etc/default/varnish $BACKUP_DIRECTORY/.

#cp --parents 
#$BACKUP_DIRECTORY/.


echo Done : $BACKUP_DIRECTORY
