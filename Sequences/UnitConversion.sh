#!/bin/bash -x

read -p "Enter the inch: " i
ft=12;
feet=$(($i / $ft))
echo $feet
