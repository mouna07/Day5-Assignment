#! /bin/bash
read -p "enter the lower limit:" lower_limit
read -p "enter the upper limit:" upper_limit
function prime(){
for (( i=$1; i<=$2; i++ ))
do
 if [ $i -eq 1 -o $i -eq 0 ]
 then
 continue;
 fi
 count=1
 for (( j=2; j<=$i/2; ++j ))
 do
 if [ $((i%j)) -eq 0 ]
 then
 count=0
 break
 fi
 done
 if [ $count -eq 1 ]
 then
 echo $i " "
 fi
done
}
echo "prime numbers between $lower_limit and $upper_limit are $( prime $lower_limit
$upper_limit )"
