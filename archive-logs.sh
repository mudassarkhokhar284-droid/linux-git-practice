#!/bin/bash
BACKUP_DIR="backups"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="$BACKUP_DIR/log_backup_$TIMESTAMP.tar.gz"
# ARCHIVING ALL FILE  Whick is start from .log are compressed into tar ball 
tar -czvf "$ARCHIVE_NAME" *.log
echo " BACKUP COMPLETED SUCCESSFULLY "

