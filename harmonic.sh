#! /bin/bash -x
s=0
read -p "enter the number of terms:" n
for (( i=1; i<=n; i++ ))
do
 if [ $i -lt $n ]
 then
 echo "1/$i +"
 printf %.10f\\n "$((1000000000 * 1/$i ))e-9"
 fi
 if [ $i -eq $n ]
 then
 echo "1/$i"
 printf %.10f\\n "$((1000000000 * 1/$i ))e-9"
 fi
don
