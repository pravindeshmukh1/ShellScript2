#!/bin/bash -x

echo "Enter number and power"
read number
hit=0
i=1
limit=256
while (( i <= $number ))
do
	if [ $i -lt $limit ]
	then
	echo "2^$i" 
	hit=$((2**$i))
	if [ $hit -gt $limit ]
	then
	break; 
	fi
i=$((i+1))
done
