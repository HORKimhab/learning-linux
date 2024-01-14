#!/bin/bash
echo "File name is "$0 # holds the current script
echo $3 # $3 holds banana
Data=$5
echo "A $Data costs just $6."
echo $#

# bash passing-arguments.sh apple 5 banana 8 "Fruit Basket" 15
# $0 (passing-arguments.sh) is file name
# $1: apple
# $2: 5
# $3: banana 
# $4: 8
# $5: "Fruit Basket"
# $#: 6 (The number of arguments passed to the script)