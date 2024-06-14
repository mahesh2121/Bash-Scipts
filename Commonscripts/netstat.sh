#!/bin/bash
HOST="www.google.com"
OUTPUT_FILE="/home/mahesh/music/output.txt"
if ping -c 1 $HOST &> /dev/null
then
    echo "$HOST is reachable" >> $OUTPUT_FILE
else
    echo "$HOST is not reachable" >> $OUTPUT_FILE
fi