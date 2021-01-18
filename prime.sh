#! /bin/bash
flag=0
read -p "enter the number to be checked:" num
for((i=2; i<=num/2; ++i))
do
 if [ $((num%i)) -eq 0 ]
 then
 flag=1
 break
 fi
done
if [ $num -eq 1 ]
then
 echo " 1 is neither prime nor composite"
else
 if [ $flag -eq 0 ]
 then
 echo "$num is prime number"
 else
 echo "$num is not prime number"
 fi
fi
