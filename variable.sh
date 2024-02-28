#!/bin/bash
hello="a b c   d"
echo $hello
echo "$hello"
echo '$hello'
var1=21 var2=42 var3=99
echo $var1 $var2 $var3
a=`echo hello`
echo $a
b=`ls -l |xargs -n 1`
echo $b
echo "New formating"
c=`ls -l`
echo "$c"
exit 0
