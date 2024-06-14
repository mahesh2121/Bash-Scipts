#!/bin/bash
SOURCE="/home/mahesh/music"
DESTINATION="/home/mahesh/music/"
DATE=$(date +%Y-%M-%d_%H-%M-%S)

#create backup
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "Backup completed on $DATE"
