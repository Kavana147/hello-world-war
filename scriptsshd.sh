#!/bin/bash
services="sshd jenkins tomcat ansible"
for i in $services
do
	ps -C $i
	if  [ $? -ne 0 ]
	then
		echo "$i service is down, please take the necessary action" | mail -s "Alert:$i service down" -c kruthikapranav55@gmail.com
	fi
done
