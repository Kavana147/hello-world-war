#!/bin/bash
echo " Enter the day"
read day
echo "$day"
case $day in 
'Mon')  echo "create 2 files at1 and at2"
	touch at1 at2
	;;

'Tue') echo "add contents to files at1 and at2"
	if [ -f at1 ]
	then
		echo "write the content to file at1"
		read cont1
		echo "$cont1" >> at1
	else
		echo "at1 file doesn't exist"
	fi
	if [ -f at2 ]
	then
		echo "write the content to file at2"
		read cont2
		echo "$cont2" >> at2
	else
		echo "at2 doesn't exist"
	fi
	mkdir -p temp
	;;
'Wed')  echo "moving the files at1 and at2 to temp folder"
	if [ -f at1 ]
	then
		mv at1 temp/
	else
		echo "at1 file doesn't exist"
	fi
	if [ -f at2 ]
	then
		mv at2 temp/
	else
		echo "at2 file doesn't exist"
	fi
	;;
'Thu') echo " creating backup files"
	if [ -f temp/at1 ] 
	then
		cp temp/at1 backup1
	else
		echo "at1 file doesn't exist"
	fi
	if [ -f temp/at2 ]
	then
		cp temp/at2 backup2
	else
		echo "at2 file doesn't exist"
	fi
	;;
'Fri') echo "removing files at1 and at2 "
	if [ -f temp/at1 ]
	then
		rm temp/at1
	else
		echo "at1 file doesn't exist"
	fi
	if  [ -f temp/at2 ]	
	then
		rm temp/at2
	else
		echo "at2 file doesn't exist"
	fi
	;;
'Sat'|'Sun') echo "Today is holiday"
	;;
esac

