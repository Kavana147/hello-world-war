#!/bin/bash
echo "Welcome to favourite eats"
echo "Select the menu \n Press 1 for South Indian \n Press 2 for North Indian \n Press 3 for Chinese \n Press 4 for Desserts \n Press 5 to Exit"
read num
count=0
while [ $count -eq 0 ]
do
case $num in
1) echo "South Indian Items Available \n 1.Idli-Sambar \n 2.Masala Dosa \n 3.Vada \n 4.Poori Sagu"
   count=2
   ;;
2) echo "North Indian Items Available \n 1.Palak Paneer \n 2.Kulcha \n 3.DalTadka \n 4.Butter Paneer"
   count=2
   ;;
3) echo "Chinese Items Available \n 1.Gobi Manchurian \n 2.Schezwan Noodles \n 3.HOney Chilli Potato \n 4.Fried Rice"
   count=2
   ;;
4) echo "Desserts available \n 1.Hot Chocolate Fudge \n 2.Vanilla scoop \n 3.Apple pie \n 4.Lemon Tart"
   count=2
   ;;
5) count=1
   ;;
esac  
done
