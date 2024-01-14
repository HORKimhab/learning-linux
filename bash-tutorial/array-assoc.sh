#!/bin/bash

# Declaration 
declare -A assoc_array

# Initialize the associative array
assoc_array=([name]="John" [age]=25 [city]="New York")

# Initialize associative array other method one by one 
# assoc_array[key1]=value1
# assoc_array[key2]=value2

# Access and print elements
echo "Name: ${assoc_array[name]}"
echo "Age: ${assoc_array[age]}"
echo "City: ${assoc_array[city]}"

# All key in array: name age city
# ${!assoc_array[@]}

# Iterate over keys and values
echo "Iterating over keys and values:"
for key in "${!assoc_array[@]}"; do
    echo "Key: $key, Value: ${assoc_array[$key]}"
done

# Delete an element
unset assoc_array[age]

# Print updated array
echo "After deleting age key:"
for key in "${!assoc_array[@]}"; do
    echo "Key: $key, Value: ${assoc_array[$key]}"
done