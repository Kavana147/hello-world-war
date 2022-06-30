#!/bin/bash
echo "check merge and rebase"
dir=`ls`
for i in $dir
do
	echo "$i"
done < $dir
