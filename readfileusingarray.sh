#!/bin/bash

arr=()

# Read each line from the file into the array
while IFS= read -r line; do
    arr+=("$line")
done < log.txt

# Display the elements of the array
echo "Elements of the array:"
for element in "${arr[@]}"; do
    echo "$element"
done

