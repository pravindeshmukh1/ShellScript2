#!/bin/bash -x

read -p "Enter the First Number:=" first
read -p "Enter the last Number:=" last
flag=0
for (( i=$first;i<=$last;i++ ))
do
	flag=0
	for (( j=2;j<$i;j++ ))
	do
	if [ $((i%j)) -eq 0 ]; then
		flag=1
		break;
	fi
	done

if [ $flag -eq 0 ]; then
echo $i
fi
done
