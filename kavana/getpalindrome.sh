#!/bin/bash
count=$1
b=$2
while [ $count -le $b ]
do
	temp=$count
	echo "$count" > palindop
	reverse=$(rev palindop)
	if [ $reverse -eq $count ]
	then 
		echo "$reverse"
	fi
	count=`expr $count + 1`
done


