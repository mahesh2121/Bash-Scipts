#!/bin/bash
for i in $(seq 1 2)
do
    for j in $(seq 1 3)
    do
        echo "Outer: $i, Inner: $j"
    done
done
