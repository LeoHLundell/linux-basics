#!/bin/bash

 math() {
 expr "$1" "$2" "$3"
}

date=$(date)

echo "What do you want to do? add / multiply / substract / divide"
read option

case $option in
    divide)
      echo "choose the first number to divide with"

read num1 

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for division num1 in "$0" at "$date" " >> log.txt
  exit 1
else
  echo "Good, enter the second number"
fi

read num2 

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for division num2 in "$0" at "$date" " >> log.txt
  exit 1
fi

sum=$(math "$num1" / "$num2")

echo "The total is: $sum"
 ;;
    add)
      echo "choose the first number to add"

read num1 

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for addition num1 in "$0" at "$date" " >> log.txt
  exit 1
else
  echo "Good, enter the second number"
fi

read num2 

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for addition num2 in "$0" at "$date" " >> log.txt
  exit 1
fi

sum=$(math "$num1" + "$num2")

echo "The total is: $sum"


 ;;
    substract)
      echo "choose the first number to substract from"

read num1 

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for substraction num1 in "$0" at "$date" " >> log.txt
  exit 1
else
  echo "Good, enter the second number"
fi

read num2 

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for substraction num2 in "$0" at "$date" " >> log.txt
  exit 1
fi

sum=$(math "$num1" - "$num2")

echo "The total is: $sum"


 ;;
    multiply)
      echo "choose what number to multiply with"

read num1 

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for multiplication num1 in "$0" at "$date" " >> log.txt
  exit 1
else
  echo "Good, enter the second number"
fi

read num2 

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Failed to enter a number"
  echo "user failed to input 1-9 for multiplication num2 in "$0" at "$date" " >> log.txt
  exit 1
fi

sum=$(math "$num1" * "$num2")

echo "The total is: $sum"

 ;;
    *)
      echo "Failed to input valid option"
     echo "user failed to input a valid start option in script: "$0" at "$date" " >> log.txt
     exit 1
 ;;
esac

