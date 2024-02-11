#!/bin/bash

read -p ' username ' user_var
echo "Username: $user_var"

read -sp ' Password ' pwd_var
echo "Password: $pwd_var"

echo "Enter name"

read -a names

echo "Name: ${names[0]},${names[1]}"

echo "replay code"

read

echo "Name: $REPLAY"

