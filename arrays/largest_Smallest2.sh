#!/bin/bash -x

function sort() {
	for ((i=0; i<10; i++))
	do
	for ((j=0; j<10; j++))
	do
	if [ ${random_num[i]} -lt ${random_num[j]} ]
	then
	temp=${random_num[i]}
	random_num[i]=${random_num[j]}
	random_num[j]=$temp
	fi
	done
	done
	echo ${random_num[@]}
	echo "Second smallest number "${random_num[1]}
	echo "Second largest number " ${random_num[$((${#random_num[@]} -2))]}
}
for((i=0;i<10;i++))
do
random_num[i]=$((RANDOM % 900 + 100))
done
echo ${random_num[@]}
sort

