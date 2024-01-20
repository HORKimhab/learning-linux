#!/bin/bash

# 001, 002 and 003 are the same result. 

# Example of a for loop to iterate over a range of numbers (1-5)
echo "---Example 1: For Loop--- (001)"
for i in {1..5}; do
    echo "Iteration $i"
done
echo #New line

# Example of a while loop to print numbers from 1 to 5
echo "---Example 2: While Loop--- (002)"
counter=1
while [ $counter -le 5 ]; do
    echo "Iteration $counter"
    ((counter++))
done
echo

# Example of an until loop to print numbers from 1 to 5 
echo "---Example 3: Unitl Loop--- (0003)"
counter=1
until [ $counter -gt 5 ]; do
    echo "Iteration $counter"
    ((counter++))
done
echo

echo "---Example 4: Loop member---"
NAMES=(Joe Jenny Sara Tony)
for N in ${NAMES[@]} ; do
  echo "My name is $N".
done
