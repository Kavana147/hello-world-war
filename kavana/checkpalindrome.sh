#!/bin/bash
echo "enter the number to be checked for palindrome"
read num
s=0
temp=$num
rev=" "
while [ $num -gt 0 ]
do 
	s=`expr $num % 10`
	num=`expr $num / 10`
	rev=$(echo $rev$s)
done

if [ $temp -eq $rev ]
then
	echo "$rev"
	echo "$temp is a palindrome"
else
	echo "$rev"
	echo "$temp is not a palindrome"
fi
