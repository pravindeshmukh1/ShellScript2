#!/bin/bash -x

echo "Think the number between 1 to 100 Number :="

lower_number=1
higher_number=100

while [[ $lower_number -lt $higher_number ]]
do
	mid=$(((( lower_number + higher_number)) / 2))
	read -p "If Number lesser than $mid enter 0 or Greater than $mid enter 1 or Number Equal to 2 :- " ch
	if [[ $ch == 0 ]]; then
		higher_number=$((mid-1))
	elif [[ $ch == 1 ]]; then
		lower_number=$((mid+1))
	elif [[ $ch == 2 ]]; then
		echo "Number is : = "$mid
		break
	fi
done
