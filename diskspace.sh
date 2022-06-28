#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 30 ]
then
	echo "the current disk space has exceeded 30%" | mail -s "Alert:Disk space reached threshold" kruthikapranav55@gmail.com
fi	
