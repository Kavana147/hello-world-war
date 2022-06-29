#!/bin/bash
echo "enter the file name"
read name
count=1
while read line
do
	output=`echo "$line" | wc -c`
	echo "this is kavana printing the character count of $count line $output"
	count=`expr $count + 1`
done < $name
