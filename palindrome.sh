#!/bin/bash
echo "enter the number to be checked for palindrome"
read num
echo "$num" > palop
s="$(rev palop)"
if [ "$num" == "$s" ] 
then 
	echo "$num is a palindrome"
else
	echo "$num is not a palindrome"
fi

