# Write a shell script to accept a file name from user and check whether its an ordinary file or a directory.  
# In case of file show the contents of file and if itís a directory show number of files in that directory. 

#!/bin/bash

# Prompt the user for a file name
echo "Enter the name of the file or directory:"
read file_name

# Check if the file exists
if [ -e "$file_name" ]; then
  # Check if the file is an ordinary file
  if [ -f "$file_name" ]; then
    # Display the contents of the file
    echo "File contents:"
    cat "$file_name"
  elif [ -d "$file_name" ]; then
    # Count the number of files in the directory
    num_files=$(ls -1q "$file_name" | wc -l)
    echo "Number of files in directory: $num_files"
  else
    # Display an error message if the file is neither a file nor a directory
    echo "Error: '$file_name' is neither a file nor a directory."
  fi
else
  # Display an error message if the file does not exist
  echo "Error: File '$file_name' does not exist."
fi

