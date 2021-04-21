#!/bin/bash
declare -A Arithmetic
echo "Welcome to Sorting Arithmetic Computation Problem"
# input take from user
read -p "Enter A Number :" a
read -p "Enter B Number :" b
read -p "Enter C Number :" c

result1=`awk "BEGIN {print $a + $b * $c}"`

result2=`awk "BEGIN {print $a * $b + $c}"`

result3=`awk "BEGIN {print $c + $a / $b}"`

result4=`awk "BEGIN {print $a % $b + $c}"`


Arithmetic[CP1]="$result1"
Arithmetic[CP2]="$result2"
Arithmetic[CP3]="$result3"
Arithmetic[CP4]="$result4"

echo "All Arithmetic Computations Result : ${Arithmetic[@]}"
echo "Arithmetic Computation Program Is : ${!Arithmetic[@]}"
echo "All Arithmetic Computations And their Result"

for (( i=1; i<=${#Arithmetic[@]}; i++ ))
do
	echo "CP$i : ${Arithmetic[CP$i]}"
done



