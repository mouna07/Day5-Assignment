#! /bin/bash -x

read -p "enter the number" num

function isprime()
{
 count=0
        for (( j=2; j<$1; j++))
        do
                if [ $(($1 % j)) -eq 0 ]
                then
                        count=1
                        break;
                fi
        done
        if [ $count -eq 1 ]
        then
                echo composite
        else
                echo prime
        fi
}

function isPalindrome(){
number=$1
num=$number
reverse=0
while [ $number -gt 0 ]
do
a=`expr $number % 10 `
n=`expr $number / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $num -eq $reverse ]
then
    echo "Number is palindrome"
else
        echo "Number is not palindrome"
fi

}
read -p "enter the condition to be checked\n 1.prime check\n 2. palindrome check:" check
   case  $check in
           1) echo $( isprime $num )
              ;;
           2) echo $( isPalindrome $num )
              ;;
   esac


