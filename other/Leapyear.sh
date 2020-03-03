#!/bin/bash -x

read -p "Enter the  year -: " year

if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ];
then
	echo "$year is a Leap Year";
else
	echo "$year is Not Leap Year";
fi
