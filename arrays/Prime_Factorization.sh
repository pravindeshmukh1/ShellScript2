#!/bin/bash -x

read -p "Enter the Prime Number " number

for (( i=1;i<=$(($number/2));i++))
do
	if [[ $(($number % i)) -eq 0 ]]
	then
	arr[i]=$i
	fi
done
echo "Array Factor "${arr[@]}
