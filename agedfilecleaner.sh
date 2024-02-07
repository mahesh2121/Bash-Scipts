#!/bin/bash

#find the files older than 90 days

#first we list files
find $(pwd) -mtime +90 -exec ls -l {} \;
#delete old files
find . mtime +90 -exec mv {} {}.old \;
#remove files
find . -mtime +90 -exec rm {} \;

