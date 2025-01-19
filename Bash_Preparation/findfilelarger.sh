#!/bin/bash
#find the largest file
read -p "Enter size in MB" size
find . -type f -size "+${size}M"
