#!/bin/bash

# Declare two arrays
array1=("apple" "orange" "banana")
array2=("apple" "orange" "banana")

# Compare arrays element-wise
arrays_equal=true
for i in "${!array1[@]}"; do
    if [[ "${array1[i]}" != "${array2[i]}" ]]; then
        echo "Arrays differ at index $i: ${array1[i]} vs ${array2[i]}"
        arrays_equal=false
    fi
done

# Print based on the comparison result
if [ "$arrays_equal" = true ]; then
    echo "Arrays are equal"
fi