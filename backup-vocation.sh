#!/bin/sh
#
# backup vocation web site.
#

BACKUP_DIRECTORY="$HOME/Dropbox/backup/vocation/"`date +'%Y%m%d'`
VOCATION_DIRECTORY="$HOME/work/rails/vocation"

if [ ! -d $VOCATION_DIRECTORY ] ; then
    echo Backup directory is not exist : $VOCATION_DIRECTORY
    exit
fi

mkdir -p $BACKUP_DIRECTORY

for FILE in Gemfile Gemfile.lock app config db
do
    cp -r $VOCATION_DIRECTORY/$FILE $BACKUP_DIRECTORY/.
done

pg_dump -U vocation vocation_production > $BACKUP_DIRECTORY/vocation_production.dump

echo Done : $BACKUP_DIRECTORY
