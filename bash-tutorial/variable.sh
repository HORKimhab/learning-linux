#!/bin/bash

PRICE_PER_UNIT=10 

# PRICE_PER_UNIT = 5  
# Invalid decare variable 

myFirstLetter=ABC
greeting='Hello   World!'

# A backslash "\" is used to escape special character meaning
# Expect output: The price of beef today is: 10 $USD
echo "The price of beef today is: $PRICE_PER_UNIT \$USD" 

# Encapsulating the variable name with ${} is used to avoid ambiguity
# Expect output: These are English aplhabet: ABCDEFGHI
echo "These are English aplhabet: ${myFirstLetter}DEFGHI"

# Encapsulating the variable name with "" will preserve any white space values
echo $greeting "$greeting"