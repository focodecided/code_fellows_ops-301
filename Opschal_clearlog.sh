#!/bin/bash

# Backup directory
backup_dir="/var/log/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Current timestamp in the format YYYYMMDDHHMMSS
timestamp=$(date +"%Y%m%d%H%M%S")

# File paths for logs
log_files=(
    "/var/log/syslog"
    "/var/log/wtmp"
)

# Loop through log files
for file in "${log_files[@]}"; do
    # Print original file size
    echo "Original file size of $file:"
    du -h "$file"

    # Compress the log file to a .zip file with timestamp in the backup directory
    compressed_file="$backup_dir/$(basename "$file")-$timestamp.zip"
    gzip -c "$file" > "$compressed_file"

    # Clear the contents of the log file
    echo -n > "$file"

    # Print compressed file size
    echo "Compressed file size of $compressed_file:"
    du -h "$compressed_file"
done
