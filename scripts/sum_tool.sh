#!/bin/bash

 math_tool() {
    echo $(($1 + $2))
}

read -p "This is a math tool, enter one number at a time, do you understand? yes / no" answer

if [ "$answer" = "yes" ]; then
    echo "Good, enter the first number"
 else
    echo "User failed to enter YES" >> log.txt
 exit 1
fi

read num1

if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
    echo "Not a number!"
  echo "user failed to input 1-9 for first number" >> log.txt
else
  echo "Good, enter the second number"
fi

read num2

if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Not a number!"
  echo "user failed to input 1-9 for second number" >> log.txt
fi

sum=$(math_tool $num1 $num2)

echo "The total is: $sum"


