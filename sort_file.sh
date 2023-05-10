# Write a shell script to accept a file name from the user and sort the file. 
# If the file doesn’t exist curb the error message and show the user-friendly message.

#!/bin/bash

# Prompt the user for a file name
echo "Enter the name of the file you want to sort:"
read file_name

# Check if the file exists
if [ -e "$file_name" ]; then
  # Sort the file and display the sorted output
  echo "Sorted file contents:"
  sort "$file_name"
else
  # Display an error message
  echo "Error: File '$file_name' does not exist."
fi

