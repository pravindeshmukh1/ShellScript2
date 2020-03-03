#!/bin/bash -x
read -p "Enter the Number :=" number

len=${#number}

case $len in
	1) echo "unit";;
	2) echo "ten";;
	3) echo "hundred";;
	4) echo "thousand";;
esac
