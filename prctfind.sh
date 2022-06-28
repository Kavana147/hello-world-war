#!/bin/bash
echo "enter the pattern"
read pattern
dir=`ls`
for i in $dir
do
	output=`cat $i | grep -c -i $pattern`
	if [ $output -ne 0 ]
	then
		echo "$i : pattern is found in $i"
	else
		echo " $i :pattern is not found in $i"
	fi
done 
