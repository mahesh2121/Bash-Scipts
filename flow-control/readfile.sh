#!/bin/bash

while IFS= read -r line
do
#Process each line
echo "Processing: $line"
done < "data.txt"


# cat data.txt | while read line
# do
# 	# Process each line
#   echo "Processing: $line"
# done
