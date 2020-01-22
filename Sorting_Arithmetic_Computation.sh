#!/bin/bash -x

echo "Enter the Three numbers"
read a
read b
read c

First_Operation=$(( $a + $b * $c ))
echo "The output of First Operation is: $First_Operation"

Second_Operation=$(( $a * $b + $c ))
echo "The output of Second Operation is: $Second_Operation"
