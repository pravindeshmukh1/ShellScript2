#!/bin/bash -x

for(( i=0; i<=100;i++))
do
	arr[i]=$((i+1))
	if [[ ${arr[i]:0:1} -eq ${arr[i]:1:1} ]]
	then
		echo ${arr[i]}
	fi
done
