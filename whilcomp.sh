#!/bin/bash
echo "enter the pattern to be found"
read pattern
input=`grep -i -R -l $pattern *`
if [ $? -eq 0 ]
then
	echo "printing the files containing $pattern"
	echo ="$input"
else
	echo " $pattern not present in any of the files in directory"
fi
