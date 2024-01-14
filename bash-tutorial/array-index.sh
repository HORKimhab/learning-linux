#!/bin/bash

# declare -a array; # indexed array

declare -a array 
array=("one" "two" "three")
length=${#array[@]} # length of array 

echo ${array[0]} # Output: two
echo $length
echo ${array[@]} # Output all values from array 

# Adding 
array[3]="four"
echo ${array[3]}

# Slicing Arrays
sliced_array=("${array[@]:1:2}")  # extracts 2 elements starting from index 1

# Print the sliced array
echo "Sliced array: ${sliced_array[@]}"

# Searching in an Array, search value 'one' in array
if [[ " ${array[@]} " =~ " one " ]]; then
    echo "Found"
else
    echo "Not Found"
fi

# Delete array, delete array within index = 3
unset array[3]

# Iterating over an array 
echo 'Iterating over an array'
for ele in "${array[@]}"; do
    echo $ele
done

# Copy array
newArray=("${array[@]}")
echo ${newArray[@]}

# Multidimensional Arrays
# Declare a nested array to simulate a 2D array
matrix=(
   "1 2 3"
   "4 5 6"
   "7 8 9"
)

# Function to access elements in the "2D" array
get_element() {
    local row=$1
    local col=$2
    local value=${matrix[$row]}
    value=($value)  # Split the string into an array
    echo "${value[$col]}"
}

# Access elements in the "2D" array
element=$(get_element 1 2)
echo "Element at (1,2): $element"

# https://www.w3schools.io/terminal/bash-arrays