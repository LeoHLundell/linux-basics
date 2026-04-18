#!/bin/bash

 math_op() {
      echo $(expr $1 $2 $3)
}

echo input simple math x + x
read num1 op num2

 result=$(math_op $num1 "$op" $num2)

echo "the total is: $result"
