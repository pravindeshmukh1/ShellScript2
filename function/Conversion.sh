#!/bin/bash -x

function freezingpoint() {
        result=$(echo "$number*9/5+32" | bc)
        echo $result
}
function boilingpoint() {
        result=$(echo "$number-32*5/9" | bc)
        echo $result
}

function main() {

echo "enter the Freezing point between Oc / 32 F :=" 1
echo "enter the Boiling Point of Water between 100 C/ 212 F :=" 2
read -p "enter choice :- " option
case $option in
	1)read -p " Enter the Freezin Point " number
		if [[ $number -ge 0 && $number -le 32 ]]; then
			freezingpoint
		else
			echo "enter the valid input"
		fi ;;
	2)read -p " Enter the Boiling Point " number
		if [[ $number -ge 100 &&  $number -le 212 ]]; then
			boilingpoint
		else
			echo "enter the valid input"
		fi ;;
	*) exit ;;
esac
}
main
