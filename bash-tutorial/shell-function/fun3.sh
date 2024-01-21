#!/bin/bash

# Function with default parameter
greet() {
  local name=${1:-"Guest"}

  # The the name is "Guest," prompt the user for input
  if [ "$name" == "Guest" ]; then
    read -p "Enter a name: " name
  fi

  # If the user still hasn't provided a name, set it to "Guest"
  if [ -z "$name" ]; then
    name="Guest"
  fi

  echo "Hello, $name!"
}

# Call the function without a parameter
greet
