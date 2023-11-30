#!/bin/bash

# Script:         Ops 301 Ops Chall 03
# Purpose:        File Permissions
# Why:            Allow users to make input to file permissions.


# Prompt user for input directory path
echo "Enter the directory path:"
read directory_path

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory not found."
    exit 1
fi

# Prompt user for input permissions number
echo "Enter the permissions number (e.g. 777):"
read permissions

# Log file name
log_file="permissions_change_log.txt"

# Change permissions of files in the directory and log actions
echo "-------------------------" >> "$log_file"
echo "Permissions change log" >> "$log_file"
echo "Directory: $directory_path" >> "$log_file"
echo "New Permissions: $permissions" >> "$log_file"
echo "-------------------------" >> "$log_file"

# Change permissions of files in the directory and log actions
for file in "$directory_path"/*; do
    chmod "$permissions" "$file"
    echo "Changed permissions of $file to $permissions"
    echo "Changed permissions of $file to $permissions" >> "$log_file"
    sleep 0.5 # slight delay between each file change
done

# Display directory contents and their permissions
echo -e "\nDirectory contents:"
ls -l "$directory_path"

echo -e "\nNew permissions for files in the directory:"
stat -c "%a %n" "$directory_path"/* >> "$log_file"



