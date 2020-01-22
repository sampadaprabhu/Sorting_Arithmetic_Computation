#!/bin/bash -x

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
