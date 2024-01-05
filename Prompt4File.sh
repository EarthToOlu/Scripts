#!/bin/bash

#Prompting the user for a file or directory name
read -p "Enter the name of a file or directory: " file_or_dir

# Check if the input exists
if [ -e "$file_or_dir" ]; then
    # Determine the type of file (regular file, directory, or other)
    if [ -f "$file_or_dir" ]; then
        file_type="regular file"
    elif [ -d "$file_or_dir" ]; then
        file_type="directory"
    else
        file_type="other type of file"
    fi

    # Display the type of file
    echo "$file_or_dir is a $file_type."

    # Perform ls command with long listing option
    ls -l "$file_or_dir"
else

    echo "The file or directory '$file_or_dir' does not exist."
fi
