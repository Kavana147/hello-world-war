#!/bin/bash
count=0
echo "Welcome to Arithmetic calculator"
echo "Choose the below options \n 1.Addition \n 2.Subtraction \n 3.Multiplication \n 4.Division \n 5.back to Menu" 
read num
while [ $count -eq 0 ]
do	
case $num in
1) echo " You have selected addition"
   echo "Please enter 2 values"
   read a
   read b
   sum=`expr $a + $b`
   echo "the sum of $a and $b is $sum"
   ;;
2) echo "Please enter 2 values"
   read a
   read b
   difference=`expr $a - $b`   
   echo "the difference of $a and $b is $difference"
   ;;  
3) echo " You have selected multiplication"
   echo "Please enter 2 values"
   read a
   read b
   product=`expr $a \* $b`
   echo "the product of $a and $b is $product"
   ;;
4) echo " You have selected division"
   echo "Please enter 2 values"
   read a
   read b
   quotient=`expr $a / $b`
   rem=`expr $a % $b`
   echo "the division of $a and $b gives quotient  $quotient and remainder $rem"
   ;;     
5) count=1
   ;;
*) echo "You have not entered the valid option"
   ;;
esac  
done
