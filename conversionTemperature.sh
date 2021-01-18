#! /bin/bash

read -p "enter the value to be converted:" value

function degreeC(){
        degC=$((($1-32)*5/9))
        echo "degreeC:" $degC
}

function degreeF(){
        degF=$((($1*9/5)+32))
        echo "degreeF:" $degF
}
read -p "enter the fuction to be performed:" func

case $func in
        1) echo "degreeF=$value"
           echo $(degreeC $value)
           ;;
        2) echo "degreeC=$value"
           echo $(degreeF $value)
           ;;
esac

