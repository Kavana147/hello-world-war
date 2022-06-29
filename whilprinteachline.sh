#!/bin/bash
echo "checking release1.1"
echo "testing for assignment on tag"
echo "enter the file name"
read name
while read line
do
	echo "this is kavana printing line by line"
        echo "$line"
done < $name
