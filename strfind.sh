#!/bin/bash
echo "enter the file name"
read name 
echo "enter the pattern to be found"
read pattern
output=`grep -i -c $pattern $name`
if [ $output -ne 0 ] 
then
	echo " The filename is $name"
	echo " pattern is present in $name "
else
	echo "pattern is not present in $name "
fi

