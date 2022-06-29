#!/bin/bash
a=$1
b=$2
c=$3
d=$4
if [ $# -lt 4 ]
then
	echo " enter all the 4 values to execute"
elif [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ]
then
	echo "the biggest number is $a"
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ]
then
	echo "the biggest number is $b"
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ]
then
	echo "the biggest number is $c"
else
	echo "the biggest number is $d"
fi

