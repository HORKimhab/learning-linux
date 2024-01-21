#!/bin/bash

# Function with default parameter
greet(){
    local name=${1:-"Guest"}
    echo "Hello, $name!"
}

# Call the function without a parameter
greet
