#!/bin/bash
array=$@
count=$#
#for i in $array
#do
	while [ $count -gt 0 ]
	do
		#total=`echo "$count"`
		echo "$array"
		echo "$array" | awk -v c="$count" '{ print $c }'
	 count=`expr $count - 1`
 	done
	#echo "$array" | awk '{print $count}'
#done
