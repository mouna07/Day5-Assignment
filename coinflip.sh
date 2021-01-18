#! /bin/bash
echo "coin flipped"
count=0
flag=0
while [ $count -le 30 -a $flag -le 30 ]
do
  s=$((RANDOM%2))

  if [[ $s -eq 0 ]]; then
        echo HEADS
        count=$((count+1))
        if [ $count -eq 7 ]
        then
                break;
        fi

  else
        echo TAILS
        flag=$((flag+1))
        if [ $flag -eq 7 ]
        then
                break;
        fi

  fi
done
echo "HEADS="$count
echo "TAILS="$flag
