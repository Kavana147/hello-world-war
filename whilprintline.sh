#!/bin/bash
echo "enter the file name"
read name
echo "enter the line number to be displayed"
read linenum
count=1
while read line
do
	if [ $count -eq $linenum ]
	then
		echo "this is kavana printing line $linenum"
       		 echo "$line"
	fi
	count=`expr $count + 1`
done < $name
