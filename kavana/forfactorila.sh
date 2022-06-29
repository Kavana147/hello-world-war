#!/bin/bash
num=$@
for i in $num
do
	count=1	
	x=$i
	while [ $i -gt 0 ]
	do
		count=`expr $i \* $count`
		i=`expr $i - 1`
	done
	echo "the factorial of $x is $count"
done
