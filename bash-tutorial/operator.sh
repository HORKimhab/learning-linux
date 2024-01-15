#!/bin/bash

a=5
b=3
counter=22
sum=$((a + b))
difference=$((a-b))
mul=$((a*b))
div=$((a/b))
mod=$((a%b))
combi=$(( ((a+b) * 2)/5 ))
((counter++))

echo "Arithmetic Operators"
echo "Sum: $sum"
echo "Difference: $difference"
echo "Multiplication: $mul"
echo "Division: $div"
echo "Modulus: $mod"
echo "Counter: $counter"
echo "Combining Operator : $combi"

echo -e "\nArithmetic Operators" # option -e to enable newline 
