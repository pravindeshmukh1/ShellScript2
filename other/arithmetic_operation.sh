#!/bin/bash +x

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the three number : " c

p=$(($a+$b*$c))
q=$(($a%$b+$c))
r=$(($C+$a/$b))
s=$(($a*$b+$c))
echo $p $q $r $s

