# Write a shell script to accept a file name from the user and make a copy of that file.

#!/bin/bash

# Prompt the user for a file name
echo "Enter the name of the file you want to copy:"
read file_name

# Check if the file exists
if [ -e "$file_name" ]; then
  # Make a copy of the file
  cp "$file_name" "${file_name}_copy"
  echo "File copied successfully!"
else
  echo "File does not exist."
fi
