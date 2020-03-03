#!/bin/bash -x
cash=100
bet=0
win=0
goal=200
while [ $cash -gt 0 -a $cash -lt $goal ]
do
 ((bet++))
number=$((RANDOM%2))
  if [ $number == 0 ]
  then 
     cash=$((cash + 1))
  else
     cash=$((cash - 1))
  fi
done 
if [ $cash == $goal ]
then
   ((win++))
fi
echo "number of wins :" $win
echo "number of bet :" $bet

