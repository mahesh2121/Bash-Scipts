#!/bin/bash
# Filename: checking if a specific file exists

FILE=~/logs.txt

if test -f "$FILE"
then
  echo "$FILE exists."
  exit 2
else
  echo "$FILE doesn't exists."
  exit 4
fi