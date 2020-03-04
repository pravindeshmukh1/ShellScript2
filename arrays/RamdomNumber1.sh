#!/bin/bash -x

function main() {
random
second_largest
second_smallest
}

function random() {
for((i=0;i<10;i++))
do
random_num[i]=$((RANDOM % 900 + 100))
done
echo ${random_num[@]}
}

function second_largest() {
max1=random_num[0]
max2=random_num[0]
for((i=0; i<${#random_num[@]}; i++))
do
	if [[ ${random_num[i]} -gt $max1 ]]; then
		max2=$max1
		max1=${random_num[i]}
	elif [[ ${random_num[i]} -gt $max2 && ${random_num[i]} -ne $max1 ]]; then
		max2=${random_num[i]}
	fi
done
echo "Second largest num:- $max2"

}

function second_smallest() {
min1=random_num[0]
min2=random_num[0]
for((i=0; i<${#random_num[@]}; i++))
do
        if [[ ${random_num[i]} -lt $min1 ]]; then
		min2=$min1
		min1=${random_num[i]}
        elif [[ ${random_num[i]} -lt $min2 && ${random_num[i]} -gt $min1 ]]; then
                min2=${random_num[i]}
        fi
done
echo "Second Smallest num:- $min2"
}
main
