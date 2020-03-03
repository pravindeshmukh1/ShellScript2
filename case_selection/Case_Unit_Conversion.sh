#!/bin/bash -x

read -p "Enter the input:= " no

echo "enter the Feet to Inch" 1
echo "enter the Feet to Meter" 2
echo "enter the Inch to Feet " 3
echo "enter the Meter to Feet" 4
read -p "enter choice" option
case $option in
	1) result1=$(($no * 12))
		echo $result1 ;;
	2) result=$( echo "$no * 0.30" | bc )
		echo $result ;;
	3) result=$(( $no / 12));;
	4) result1=$( echo "$no * 3.2808" | bc )
		echo $result1 ;;
esac
