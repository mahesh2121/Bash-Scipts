#!/bin/bash
#length
length=12
#Genrate password
password=$(< /dev/urandom tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?' | head -c "$length")

#Print the genrated password
echo "Genrated Password: >> $password"