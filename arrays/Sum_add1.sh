#!/bin/bash
read -p "Enter length of array: " len
for(( i=0; i<$len; i++))
do
	read -p "Enter the value: " arr[$i]
done

echo "Element of array "${arr[@]}

for(( i=0; i<$((${#arr[@]}-2)); i++ ))
do
	for(( j=(($i+1)); j<${#arr[@]}-1; j++ ))
	do
		for(( k=$(($j+1)); k<${#arr[@]}; k++ ))
		do
			if [ $((${arr[i]} + ${arr[j]} + ${arr[k]})) -eq 0 ]
			then
				echo " "${arr[i]} ${arr[j]} ${arr[k]}
         		fi
      		done
   	done
done
