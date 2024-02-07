#!/bin/bash

read -p "Enter Username:" username
echo "Your usename is $username"

sudo useradd-m $username

echo "New user added"


