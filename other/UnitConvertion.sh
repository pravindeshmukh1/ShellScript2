#!/bin/bash -x

echo "Enter width and height of ractangular in meter: "
read width
read height
meter=$(($width * $height));
echo "Area of the rectangle is:- " $meter
area=$(($meter * 25));
echo "Are of 25 such a plots in acres: " $area
