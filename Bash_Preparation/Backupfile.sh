#!/bin/bash
read -p "Enter filename:" filename
cp "$filename" "${filename}_$(date +%Y%m%d%H%M%S).bak"