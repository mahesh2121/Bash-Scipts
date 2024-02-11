#! /bin/bash
echo $0 $1 $2 $3 $4 '>$1 $2 $3 $4'
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]} ${args[4]} 

# calling all arguments

echo $@

# calling Number arguments

echo $#