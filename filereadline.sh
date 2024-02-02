#!/bin/bash
file=/etc/fstab
{
	read line1
	read line2
} < $file

echo "First line in $file is:"
echo "$line1"
echo "secound line in $file is:"
echo "$line2"
exit 0
