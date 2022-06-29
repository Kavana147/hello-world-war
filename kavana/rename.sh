#!/bin/bash
dir=$(ls *.txt) 
#count=1
#new="new"
#echo "enter file name"
#read name
#echo "enter the name you wish to rename"
#read rename
#output=`mv $name $rename.html`
#echo "renamed file of $name is $rename.html"
for i in $dir
do
#	if [ -f $i.txt ]
#	then	
	echo "renaming $i"
	jeep=` echo "$i" | awk -F "." '{print $1}'` 
	mv $jeep.txt  new$jeep.html
#       count=`expr $count + 1`	
#	output=`mv  $i.txt $i.html`
#	echo "$i"
#	fi
done 

