#!/bin/bash
dir=`ls`
for i in $dir
do
	echo "$i"
done < $dir
