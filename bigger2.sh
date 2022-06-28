#!/bin/bash
echo " enter the first numner"
read a
echo "enter the second number"
read b
echo "enter the third number"
read c
if [ $a -gt $b ] && [ $a -gt $c ]
then
	echo " $a"
elif [ $b -gt $a ] && [ $b -gt $c ]
then
	echo " $b"
else
	echo "$c"
fi
