#!/bin/bash

COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done
echo 

# Prints out only odd numbers - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Check if COUNT is even
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
  fi
  echo $COUNT
done

# Loop through files in a current directory using a for loop
# $PWD is current directory
for file in $PWD/*
do
  echo "File: $file"
done

# Loop with an arithmetic sequence increase once with 5
for ((i=0; i<=20; i+=5))
do
  echo "Value: $i"
done

# Advanced Bash script with break and continue statements

# Outer loop
for ((i=1; i<=5; i++))
do
  echo "Outer loop iteration $i"

  # Inner loop
  for ((j=1; j<=5; j++))
  do
    echo "   Inner loop iteration $j"

    # Check a condition for the inner loop
    if [ $j -eq 3 ]; then
      echo "      Skipping the rest of the inner loop iterations"
      continue 2  # Continue with the next iteration of the outer loop
    fi

    # Check a condition for the outer loop
    if [ $i -eq 4 ]; then
      echo "      Breaking out of the outer loop at iteration 4 of the inner loop"
      break 2  # Break out of both inner and outer loops
    fi
  done
done

echo "Script completed."
