#!/bin/bash

# Attempt input with 3 times and set condition with try again

max_attempts=3

while true; do
    attempts=0

    while [ "$attempts" -lt "$max_attempts" ]; do
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
            *) echo "Invalid choice. Please enter a number between 1 and 5."
               ((attempts++));;
        esac
    done

    # If the loop completes, the maximum attempts are reached.
    echo "You have reached the maximum number of attempts."

    # Ask the user if they want to try again.
    read -p "Do you want to try again? (yes/no): " retry

    # Remove leading and trailing whitespace
    retry=$(echo "$retry" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

    if [ "$retry" == "yes" ]; then
        # Start the loop again.
        continue
    else
        echo "Exiting the script."
        exit 1
    fi
done
