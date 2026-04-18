#!/bin/bash

 math() {
 echo $(expr $1 "$2" $3)
}

echo "What do you want to do? add / multiply / substract / divide"
read option

case $option in
    divide)
      echo "choose the first number to divide with"
 ;;
    add)
      echo "choose the first number to add"
 ;;
    substract)
      echo "choose the first number to substract from"
 ;;
    multiply)
      echo "choose what number to multiply with"
 ;;
    *)
      echo "Failed to input valid option"
     echo "user failed to input a valid start option in script: "$0" at "$date" " >> log.txt
     exit 1
 ;;
esac

if [ "$option" = "divide" ]; then
operation="/"
fi

if [ "$option" = "add" ]; then
operation="+"
fi

if [ "$option" = "substract" ]; then
operation="-"
fi

if [ "$option" = "multiply" ]; then
operation="*"
fi

read num1

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
  echo "Not a number!"
  echo "User failed to input 1-9 for first number" >> log.txt
  exit 1
else
  echo "Good, enter the second number:"
fi

read num2

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
  echo "Not a number!"
  echo "User failed to input 1-9 for second number" >> log.txt
  exit 1
fi

sum=$(math "$num1" "$operation" "$num2")
echo "The result is: $sum"


