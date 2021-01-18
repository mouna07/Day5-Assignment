#! /bin/bash
read -p "enter the value of n:" n
power_of_two=1
for (( i=0; i<=n; i++ ))
do
 if [ $power_of_two -eq 256 ]
 then
 break
 else
 echo $i " " $power_of_two
 power_of_two=$((2*power_of_two))
 fi
done
