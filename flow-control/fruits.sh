#!/bin/bash
fruits=("apple" "banana" "orange" "grape" "pear")

for fruit in "${fruits[@]}"
do
  if [ "$fruit" == "orange" ]
  then
    echo "Found orange!"
    break
  fi
  echo "Current fruit: $fruit"
done