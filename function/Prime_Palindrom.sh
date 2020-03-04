#!/bin/bash -x

function main() {
read -p "Enter the Number-" number
is_palindrom
}

function is_prime() {
for (( i=2;i<$temp/2;i++ ))
do
if [[ $temp%$i -eq 0 ]]; then
	flag=$flag+1
fi
done
if [[ $flag -eq 0 ]]; then
echo "$temp is also Prime"
else
echo "$temp is Not Prime"
fi
}
r
function is_palindrom() {
temp=$number
result=0
rev=""

while [ $number -gt 0 ]
do
result=$(( number % 10 ))
number=$(( number / 10 ))
rev=$(( rev * 10 + result ))
done
if [ $temp -eq $rev ];
then
	echo "$temp is Palindrom"
	is_prime
else
	echo "$temp is Not a Palindrom"
fi
}
main
