#!/bin/bash
echo " enter the first numner"
read a
echo "enter the second number"
read b
echo "enter the third number"
read c
if [ $a -gt $b -a $a -gt $c ]
then
	echo " $a"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo " $b"
else
	echo "$c"
fi
echo " the passed arguments are $#"
echo " the name of the script is $0"

