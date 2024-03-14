#!/bin/bash

counter=1

while true
do
    echo "Counter: $counter"
    ((counter++))

    if [ $counter -gt 10 ]
    then
        break
    fi
done

