#!/bin/bash

# Set source and destination paths
source_dir="$HOME"
# use username@ip if not using ssh
dest_dir="192.168.1.10:~/backup"

# Find files changed in the last day
for item in $(find "$source_dir" -mtime -1 -print); do
  # scp the file preserving the modification time
  scp -p "$item" "$dest_dir"
  echo "$item" has been backed up
done
echo "Backup completed."
