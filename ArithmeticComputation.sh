#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Problem"

read -p "Enter First Number :" a
read -p "Enter Second Number :" b
read -p "Enter Third Number :" c

result1=`awk "BEGIN {print $a + $b * $c}"`
echo " Result of First Computation Program is : $result1"
