#!/bin/bash

#Variable and Quotes 

#USER name
echo "Enter your USER"
read USER

# With double quote bash shell will not read the special characters ($100)
echo "With Double Quote."
echo "Hello $USER you have $100 in your account."

# With single quote will print the Variables
echo "With Single Quote."
echo 'Hello $USER you have $100 in your account.'

# Will print VARS and Special characters
echo "With Double quote and escape sequence."
echo "Hello $USER you have \$100 in your account."
