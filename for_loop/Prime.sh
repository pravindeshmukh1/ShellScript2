#!/bin/bash -x

read -p "Enter the Number " number
flag=0

for (( i=2;i<$number/2;i++ ))
do
if [[ $number%$i -eq 0 ]]; then
	flag=$flag+1
fi
done

if [[ $flag -eq 0 ]]; then
echo "Number is  Prime"
else
echo "number is Not Prime"
fi
