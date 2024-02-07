#!/bin/bash
IPlist="$(pwd)/filelist.txt"

for ip in $(cat $IPlist)

do 
   ping -c1 $ip &> $(pwd)/null
   if [ $? -eq 0 ]
   then
   echo "$ip ping passed"
   else  
   echo "$ip ping failed"
   fi
done 


