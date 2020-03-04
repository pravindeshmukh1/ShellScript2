#!/bin/bash -x 

declare -A birth
for((i=1;i<=50;i++))
do
	random_number=$((RANDOM%12+1))
	birth[$i]=$random_number
done
for(( i=1;i<=12;i++))
do
	echo "Month :"$i
	for((j=1; j<=50; j++))
	do
		if (( ${birth[$j]} == $i ))
		then
			echo "Person:-"$j
		fi 
	done
done
