#!/bin/bash

# print a "
echo "$(echo '"')"
echo "\""

var1="Two bits"
echo "\$var1 = "$var1""

echo ''\''' "'"

echo -e "\v\v\v\v"

echo -e "\042"
quo=$'\042' #convert ascii to charecter
echo $quo
echo "$quo"

# print newline
echo "==="
echo $'\n' # $"\n" not work
echo "==="

echo "==="
echo -e '\n'
echo "==="
