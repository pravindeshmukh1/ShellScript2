#!/bin/bash

read -p "Enter the Number" no

har=1
for(( i=2; i<=$no; i++))
do
har=$har+1/$i;
echo $har
done


