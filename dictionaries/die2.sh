#!/bin/bash -x

declare -A dice
die=1
while [[ ${dice["$die"]} -ne 10 ]]
	do
	die=$((RANDOM % 6 + 1))
	dice["$die"]=$((${dice["$die"]}+1))
	done
echo "Dice" ${!dice[@]}
echo "dictonary: " ${dice[@]}

max_number=${dice[1]}
min_number=${dice[1]}

for (( i=0;i<=6;i++ ))
do
		if [[ ${dice[$i]} -gt $max_number ]]
		then
		max_number=${dice[$i]}
					max=$i
		fi
		if [[ ${dice[$i]} -lt $min_number ]]
		then
		min_number=${dice[$i]}
					min=$i
		fi
done
echo "max : $max min :$min"
