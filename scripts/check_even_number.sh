#!/bin/bash

check_even() {
remainder=$(expr $1 % 2)

if [ "$remainder" -eq 0 ]; then
   return 0
else
   return 1
fi
}

echo "Enter a number"
read num

check_even "$num"

if [ $? -eq 0 ]; then
   echo "The number is even!"
   echo "$(date): $num is even" >> log.txt
else
   echo "The number is odd"
   echo "$(date): $num is odd" >> log.txt
fi


