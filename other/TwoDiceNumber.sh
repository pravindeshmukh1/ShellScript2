#!/bin/bash -x

firstDiceNumber=$((1 + RANDOM % 6))
secondDiceNumber=$((1 + RANDOM % 6))
result=$(($firstDiceNumber + $secondDiceNumber))
echo $result
