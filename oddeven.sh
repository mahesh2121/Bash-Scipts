#!/bin/bash

for ((number = 1; number <= 10; number++)); do 
	if [ $((number % 2 )) -eq 0 ]; then
		echo "The number $number is even"
	else
		echo "The number $number is odd"
	fi
done


