# Write a shell script to accept file name from the user and display the contents of file. 
# If the file doesn't exist then try curbing the error and display a user friendly error to user.
#!/bin/bash

# Prompt the user for a file name
echo "Enter the name of the file you want to display:"
read file_name

# Check if the file exists
if [ -e "$file_name" ]; then
  # Display the contents of the file
  cat "$file_name"
else
  # Display an error message
  echo "Error: File '$file_name' does not exist."
fi

