#!/bin/bash -x

number=$((RANDOM % 2))

if [ $number -eq 1 ];
then
	echo "head";
else
	echo "tail";
fi
