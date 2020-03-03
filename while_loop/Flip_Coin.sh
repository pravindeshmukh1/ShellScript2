#!/bin/bash -x
 
head=0
tail=0
while [[ $head -le 11 || $tail -le 11 ]]
do
  flips=$((RANDOM % 2))
  if [ $flips -eq 0 ]
  then 
     head=$((head + 1))
  elif [ $flips -eq 1 ]
  then
    tail=$((tail + 1))
  fi
done
