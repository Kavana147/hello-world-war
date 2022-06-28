#!/bin/bash
echo " enter the first numner"
read a
echo "enter the second number"
read b
if [ $a -gt $b ]
then
	echo " $a"
else
	echo " $b"
fi
