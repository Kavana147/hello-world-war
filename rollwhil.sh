#!/bin/bash
echo "enter the file name"
read name 
while read line
do
	rollnum=`echo "$line"| awk '{print $3}'`
	if [ $rollnum -gt 25 ]
	then
		echo "$line" | awk '{print $1}'
	fi
done < $name
