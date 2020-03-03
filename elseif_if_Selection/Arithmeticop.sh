#!/bin/bash -x

read -p "Enter the First number" a
read -p "Enter the Second number" b
read -p "Enter the Third number" c

sum1=$(($a + $b * $c))
sum2=$(($a % $b + $c))
sum3=$(($c + $a / $b))
sum4=$(($a * $b + $c))

if [ $sum1 -gt $sum2 ] ; then
	if [ $sum1 -gt $sum3 ]; then
		if [ $sum1 -gt $sum4 ]; then
				echo "Max Sum :=" $sum1
			else
				echo "Max Sum :=" $sum4
		fi
	fi
elif [ $sum2 -gt $sum3 ]; then
	if [ $sum -gt $sum4 ]; then
		echo "Max Sum :=" $sum2
	else
		echo "Max Sum:=" $sum4
	fi
elif [ $sum3 -gt $sum4 ]; then
		echo "Max Sum :="$sum3
	else
		echo "Max Sum :=" $sum4
fi

if [ $sum1 -lt $sum2 ]; then
	if [ $sum1 -lt $sum3 ]; then
		if [ $sum1 -lt $sum4 ]; then
			echo "Min Sum :="$sum1
		else
			echo "Min Sum :="$sum4
		fi
	fi
elif [ $sum2 -lt $sum3 ]; then
	if [$sum2 -lt $sum4 ]; then
		echo "Min Sum :="$sum2
	else
		echo "Min Sum :="$sum4
	fi
elif [ $sum3 -lt $sum4 ]; then
		echo "Min Sum :="$sum3
	else
		echo "Min Sum :="$sun4
fi
