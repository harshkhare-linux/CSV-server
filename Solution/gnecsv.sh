#!/bin/bash
# bash generate random alphanumeric string
#

for ((a=0; a <= 10 ; a++))
do
	NUMBER=$(cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | sed -e 's/^0*//' | head --bytes 3)
   	# echo $a ', ' $NUMBER
   	data+="${a}, ${NUMBER}\n"
done
output=inputfile
echo -e $data > $output
