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
