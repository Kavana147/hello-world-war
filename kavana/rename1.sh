#!/bin/bash
echo "enter file name"
read name
echo "enter the name you wish to rename"
read rename
output=`mv $name $rename.html`
echo "renamed file of $name is $rename.html"

