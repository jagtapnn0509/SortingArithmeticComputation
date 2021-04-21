#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Problem"
# input take from user
read -p "Enter First Number :" a
read -p "Enter Second Number :" b
read -p "Enter Third Number :" c

result1=`awk "BEGIN {print $a + $b * $c}"`
echo " Result of First Computation Program is : $result1"

result2=`awk "BEGIN {print $a * $b + $c}"`
echo " Result of Second Computation Program is : $result2"

result3=`awk "BEGIN {print $c + $a / $b}"`
echo " Result of Third Computation Program is : $result3"

result4=`awk "BEGIN {print $a % $b + $c}"`
echo " Result of Forth Computation Program is : $result4"
