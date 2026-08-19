#!/bin/bash

BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
 
if [ -d "logs" ];
then 
    mkdir -p "$BACKUP_DIR"
   tar -czf "$BACKUP_DIR/logs_backup_$TIMESTAMP.tar.gz" logs/
   echo " Log Directory Sucessfully  BackedUP To $BACKUP_DIR/logs_backup_$TIMESTAMP.tar.gz"
else
   echo " Error : This type of Directory Does Not Exist "
fi
