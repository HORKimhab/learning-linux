#!/bin/bash

echo "Select a language:"
echo "1) Bash"
echo "2) Perl"
echo "3) Python"
echo "4) C++"
echo "5) Exit"

read -p "Enter your choice (1-5): " mycase

case $mycase in
    1) echo "You selected Bash";;
    2) echo "You selected Perl";;
    3) echo "You selected Python";;
    4) echo "You selected C++";;
    5) echo "Exiting the script."
       exit;;
    *) echo "Invalid choice. Please enter a number between 1 and 5.";;
esac
