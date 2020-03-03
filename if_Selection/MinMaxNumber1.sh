#!/bin/bash -x

highervalue=999
lowervalue=100
first_randomNo=$(( RANDOM % (highervalue - lowervalue + 1 ) + lowervalue ))
second_randomNo=$(( RANDOM % (highervalue - lowervalue + 1 ) + lowervalue ))
third_randomNo=$(( RANDOM % (highervalue - lowervalue + 1 ) + lowervalue ))
forth_randomNo=$(( RANDOM % (highervalue - lowervalue + 1 ) + lowervalue ))
fifth_randomNo=$(( RANDOM % (highervalue - lowervalue + 1 ) + lowervalue ))
max_randomNo=$first_randomNo
min_randomNo=$first_randomNo

if [ $max_randomNo -lt $second_randomNo ]
then
	max_randomNo=$second_randomNo
fi
if [ $max_randomNo -lt $third_randomNo ]
then
	max_randomNo=$third_randomNo
fi
if [ $max_randomNo -lt $forth_randomNo ]
then
	max_randomNo=$forth_randomNo
fi
if [ $max_randomNo -lt $fifth_randomNo ]
then
	max_randomNo=$fifth_randomNo
fi

echo "$maximum number is:-------- "$max_randomNo

if [ $min_randomNo -gt $second_randomNo ]
then
         min_randomNo=$second_randomNo
fi
if [ $min_randomNo -gt $third_randomNo ]
then
         min_randomNo=$third_randomNo
fi
if [ $min_randomNo -gt $forth_randomNo ]
then
         min_randomNo=$forth_randomNo
fi
if [ $min_randomNo -gt $fifth_randomNo ]
then
         min_randomNo=$fifth_randomNo
fi

echo "minimum number is:--------- "$min_randomNo

