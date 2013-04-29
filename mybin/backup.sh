#!/bin/bash

FILES=public_html/
ROOT=/home/imbugsco/
BACKDIR=wwwroot/backup
DBNAME=imbugsco_blog
DBUSER=imbugsco_read
DBPASS=password

cd $ROOT
mkdir -p $BACKDIR
stamp=$(date +%Y%m%d)
rm -rf $BACKDIR/db_backup_*.sql
rm -rf $BACKDIR/blog_backup_*.tgz
mysqldump -u$DBUSER -p$DBPASS $DBNAME > $BACKDIR/db_backup_$stamp.sql
tar czvfp $BACKDIR/blog_backup_$stamp.tgz $FILES
echo "BACKUP FINISHED $stamp !"
