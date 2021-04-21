#!/bin/bash
declare -A Arithmetic
echo "Welcome to Sorting Arithmetic Computation Problem"
# input take from user
read -p "Enter A Number :" a
read -p "Enter B Number :" b
read -p "Enter C Number :" c

result1=$(($a+$b*$c))

result2=$(($a*$b+$c))

result3=$(($c+$a/$b))

result4=$(($a%$b+$c))


Arithmetic[CP1]="$result1"
Arithmetic[CP2]="$result2"
Arithmetic[CP3]="$result3"
Arithmetic[CP4]="$result4"

echo "All Arithmetic Computations And their Result in Dictionary :"

echo "All Arithmetic Computations Result : ${Arithmetic[@]}"
echo "Arithmetic Computation Program Is : ${!Arithmetic[@]}"


for (( i=1; i<=${#Arithmetic[@]}; i++ ))
do
	echo "CP$i : ${Arithmetic[CP$i]}"
done

echo "All Arithmetic Computations And their Result in Array :"
for (( i=1; i<=${#Arithmetic[@]}; i++ ))
do
        array[$i]=${Arithmetic[CP$i]}
done
echo "${array[@]}"

n=${#array[@]}

for (( x=1; x<=$n; x++ ))
do
        for (( y=$x+1; y<=$n; y++ ))
        do
                if [ ${array[y]} -lt ${array[x]} ]
                then
                        temp=${array[x]}
                        array[$x]=${array[y]}
                        array[$y]=$temp
                fi
        done
done

echo "Sorted array in Ascending Order : ${array[@]}"

