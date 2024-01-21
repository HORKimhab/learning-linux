#!/bin/bash

function add {
    read -p "Enter number 1: " num1
    read -p "Enter number 2: " num2
    echo "$(($num1 + $num2))"
}

add