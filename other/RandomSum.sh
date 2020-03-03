#!/bin/bash -x
# read random number 2 Digit Values than  Sum and Average

firstNumber=$((RANDOM % 100))
secondNumber=$((RANDOM % 100))
thiedNumber=$((RANDOM % 100))
fourthNumber=$((RANDOM % 100))
fifthNumber=$((RANDOM % 100))
result=$(($firstNumber+$secondNumber+$thiredNumber+$fourthNumber+$fifthNumber))
echo $result
average=$(($result/5))
echo $average
