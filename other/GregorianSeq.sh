#!/bin/bash -x
read -p "Enter the Month: " m
read -p "Enter the Day: " d
read -p "Enter the Year: " y

a=$(($y - (14 - $m)/12))
x=$(($a + $a/4 - $a/100 + $a/400))
b=$(($m + 12 * ((14 - $m)/12) - 2))
c=$((($d + $x + (31 * $b)/12) % 7))
str=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
echo ${str[c]}
