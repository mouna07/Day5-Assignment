#! /bin/bash
no_money=0
goal=200
broke_count=0
won_count=0
Amount=100
count_check=0
echo "Total Amount = $Amount"
n=1
echo "amount with gambler started:$n"

while [ $Amount -le $no_money -o $Amount -lt $goal ]
do
        check=$((RANDOM%2))
        count_check=$((count_check+1))
        if [ $check -eq 1 ]
        then
                broke_count=$((broke_count+1))
                Amount=$((Amount-1))

        else
                won_count=$((won_count+1))
                Amount=$((Amount+1))

        fi
done

echo "number of times he lose the gambling=$broke_count"
echo "number of times he won the gambling=$won_count"
echo "number of times he had bet:$(($won_count+$broke_c))"
echo "amount=$Amount"

