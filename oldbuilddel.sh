#!/bin/bash
path=$1
retain=$2
ls -lrt $path | awk 'NR>1 {print $NF}' > outputfile
totalfiles=`cat outputfile | wc -l`
while read line
do
	if [ $totalfiles -gt $retain ]
	then
		rm -rf $path/$line
	fi
	totalfiles=`expr $totalfiles - 1`
done < outputfile
