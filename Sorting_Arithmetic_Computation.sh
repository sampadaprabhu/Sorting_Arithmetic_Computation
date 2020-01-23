#!/bin/bash -x
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
