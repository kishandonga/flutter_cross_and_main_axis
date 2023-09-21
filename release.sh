#!/bin/bash

# Define the source and destination directories
source_dir="build/web/"
destination_dir="docs"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory does not exist."
  exit 1
fi

# Check if the destination directory exists; create if not
if [ ! -d "$destination_dir" ]; then
  mkdir -p "$destination_dir"
fi

# Move all files and subdirectories from source to destination
for item in "$source_dir"/*; do
  mv "$item" "$destination_dir"
done

echo "Contents of $source_dir moved to $destination_dir"
