#!/bin/bash

stringName="HKimahb is learning bash shell" 
firstName="H" 
lastName="Kimhab"
original="You are learning bash script now."
subOriginal="${original:5:10}" 

# Concatenation 
echo "$firstName $lastName"

# String's length
echo ${#stringName} # Length of String

# Extracts a substring starting from position 5 with length 10
echo $subOriginal

# Substring Replacement
# Replaces the first occurrence of the pattern with the replacement.
sentence="I love apples, and apples are tasty."
result="${sentence/apples/oranges}"
echo $result # I love oranges, and apples are tasty

# Global Substring Replacement:
# Replaces all occurrences of the pattern with the replacement.
result1="${sentence//apples/oranges}"
echo $result1 # "I love oranges, and oranges are tasty."

# Check if String is Empty 
# `-z` to check if a string is empty 
text=""
if [ -z "$text" ]; then
    echo "The string is empty."
else 
    echo "The string is not empty."
fi

# Check if string is not empty
# `-n` to check if a string is not empty 
if [ -n "$sentence" ]; then
    echo "The string is not empty."
else 
    echo "The string is empty."
fi

# Ref: string operator bash detail one by one (on chatGPT)