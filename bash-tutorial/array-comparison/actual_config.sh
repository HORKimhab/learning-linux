#!/bin/bash

# Include the configuration
source config.sh

# Simulate retrieving actual values during runtime
actual_config=("hostname" "port" "user" "password")

# Compare arrays element-wise
arrays_equal=true
for i in "${!expected_config[@]}"; do
    if [[ "${expected_config[i]}" != "${actual_config[i]}" ]]; then
        echo "Configuration mismatch at index $i: Expected ${expected_config[i]}, Actual ${actual_config[i]}"
        arrays_equal=false
    fi
done

# Print result based on the comparison
if [ "$arrays_equal" = true ]; then
    echo "Configuration is correct."
else
    echo "Configuration is incorrect."
fi
