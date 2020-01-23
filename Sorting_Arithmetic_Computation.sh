#!/bin/bash

declare -A arithmeticDictionary
declare -a arithmeticArray
echo "Enter the Three numbers"
read a
read b
read c

First_Operation=$(( $a + $b * $c ))
echo "The output of First Operation is: $First_Operation"

Second_Operation=$(( $a * $b + $c ))
echo "The output of Second Operation is: $Second_Operation"

Third_Operation=$(( $c + $( echo "scale=2; $(( $a/$b ))" | bc ) ))
echo "The output of Third Operation is: $Third_Operation"

Fourth_Operation=$(( $a % $b + $c ))
echo "The output of Fourth Operation is: $Fourth_Operation"

arithmeticDictionary[First_Operation]=$First_Operation
arithmeticDictionary[Second_Operation]=$Second_Operation
arithmeticDictionary[Third_Operation]=$Third_Operation
arithmeticDictionary[Fourth_Operation]=$Fourth_Operation

echo "Arithmetic Dictionaary: ${arithmeticDictionary[@]}"

#Dictionary to Array
i=0
for j in ${!arithmeticDictionary[@]}
do
	arithmeticArray[$i]=${arithmeticDictionary[$j]}
	((i++))
done

#Sorting
temp=0
length=${#arithmeticArray[@]}
for (( i=0; i<=$length; i++))
do
	for ((j=$i+1; j<=$length; j++ ))
	do
		if [[ ${arithmeticArray[$i]} -gt ${arithmeticArray[$j]} ]]
		then
			#swapping
			temp=${arithmeticArray[$i]}
			arithmeticArray[$i]=${arithmeticArray[$j]}
			arithmeticArray[$j]=$temp
		fi
	done
done
echo "Sorted Array is: ${arithmeticArray[@]}"

#Sorting in Descending Order
echo "Sorted Array in Descending Order: "
for (( i=$length; i>=0; i--))
do
	printf "${arithmeticArray[$i]} "
done
echo

#Sorting in Ascending Order
echo "Sorted Array in Ascending Order: "
for (( i=0; i<=$length; i++ ))
do
	printf "${arithmeticArray[$i]} "
done
echo


