#!/bin/bash -x

read -p "Enter the Number " number
if [ ${#number} -eq 1 ]; then
echo "Unit";
elif [ ${#number} -eq 2 ]; then
echo "Ten";
elif [ ${#number} -eq 3 ]; then
echo "Hundred"
elif [ ${#number} -eq 4 ]; then
echo "Thousand"
fi
