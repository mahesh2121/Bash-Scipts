#!/bin/bash
# for i in {1..10}
# do 
#     if (( i % 2 == 0 )); then
#     echo " $i is even number "
#     else 
#     echo " $i is odd number number "
#     fi
# done



read -p "Enter number" num

    if (( num % 2 == 0 )); then
    echo "$num is even"
    else  
    echo "$num is odd"
    fi
