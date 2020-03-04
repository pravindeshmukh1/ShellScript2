#!/bin/bash -x

function main() {
read -p "Enter the Number-" number
temp=$number
result=0
is_palindrom
}
rev=""
function is_palindrom() {
while [ $number -gt 0 ]
do
result=$(( number % 10 ))
number=$(( number / 10 ))
rev=$(( rev * 10 + result ))
done
if [ $temp -eq $rev ];
then
	echo "$temp is Palindrom"
else
	echo "$temp is Not a Palindrom"
fi
}
main
