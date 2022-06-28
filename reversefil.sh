#!/bin/bash
echo "enter the file name"
read filname
total=`cat $filname | wc -l`
while [ $total -gt 0 ]
do 
	head -$total $filname | tail -1
	total=`expr $total - 1`
done

