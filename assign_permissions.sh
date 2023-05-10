# Write a shell script to accept a file name from user. 
# Check whether file has all the permissions if not assign the respective permissions to that file.

#!/bin/bash

# Prompt the user for a file name
echo "Enter the name of the file:"
read file_name

# Check if the file exists
if [ -e "$file_name" ]; then
  # Check if the file has all the permissions
  if [ -r "$file_name" ] && [ -w "$file_name" ] && [ -x "$file_name" ]; then
    echo "The file '$file_name' already has all the permissions."
  else
    # Assign the respective permissions to the file
    chmod u+rwx "$file_name"
    chmod g+rx "$file_name"
    chmod o+rx "$file_name"
    echo "Permissions assigned successfully to file '$file_name'."
  fi
else
  # Display an error message if the file does not exist
  echo "Error: File '$file_name' does not exist."
fi

