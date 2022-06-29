#!/bin/bash
#echo "enter the number to be checked for palindrome"
#read num

rev=" "
s=0
for (( num=10; num <= 100; num++ ))
do
	temp=$num
	while [ $num -gt 0 ]
	do 
		
		s=`expr $num % 10`
		num=`expr $num / 10`
		rev=$(echo $rev$s)
	done
	if [ $temp -eq $rev ]
	then
		echo "$rev"
	#echo "$temp is a palindrome"
#else
#	echo "$rev"
#	echo "$temp is not a palindrome"
		fi
done
