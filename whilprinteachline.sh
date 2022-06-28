#!/bin/bash
echo "enter the file name"
read name
while read line
do
	echo "this is kavana printing line by line"
        echo "$line"
done < $name
