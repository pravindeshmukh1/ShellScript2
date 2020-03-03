#!/bin/bash -x

read -p "Enter the Day :-" day
read -p "Enter the Month :-" month

if [ $day -ge 20 -a $month -ge 3 -a $day -lt 31 ];
then
	echo "true";
elif [ $month -eq 4 -a $day -le 30 ];
then
	echo "true";
elif [ $month -eq 5 -a $day -le 31 ];
then
	echo "true";
elif [ $month -eq 6 -a $day -le 20 ];
then
	echo "true";
else
	echo "false";
fi
