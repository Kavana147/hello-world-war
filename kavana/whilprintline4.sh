#!/bin/bash
echo "enter the file name"
read name
count=1
while read line
do
	if [ $count -eq 4 ]
	then
		echo "this is kavana printing line by line"
       		 echo "$line"
	fi
	count=`expr $count + 1`
done < $name
