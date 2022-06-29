#!/bin/bash
echo "enter the pattern to search"
read pattern
grep -i -R -l $pattern * > output
if [ -f output ]
then 
	echo " the pattern is found in the below files"
	cat output
else
	echo " the pattern is not found in the current directory"
fi

