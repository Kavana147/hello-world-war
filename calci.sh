#!/bin/bash
a=$1
b=$2
echo " the values passed are $a and $b"
sum=`expr $a + $b`
diff=`expr $a - $b`
prod=`expr $a \* $b`
div=`expr $a / $b`
echo "sum is $sum\n difference is $diff\n product is $prod\n division is $div"
echo "$#"
echo "$0"
echo "$*"
echo "$@"
