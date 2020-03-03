#!/bin/bash -x

echo "Enter number and power"
read number
pow=1
for((i=1;i<=$number;i++))
do
pow=$((2*$pow))
echo "2^$i---$pow"
done
