#!/bin/bash
echo "enter the file name to be read in reverse"
read arrayout
tac $arrayout > revop
cat revop | awk '{for(i=NF;i>=1;i--) printf "%s ", $i;print ""}'

