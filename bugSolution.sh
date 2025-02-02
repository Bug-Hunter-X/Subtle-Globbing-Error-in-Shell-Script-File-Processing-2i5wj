#!/bin/bash

# This script corrects the file processing issue by using a single glob pattern

input_dir="/tmp/mydir"

# Create a sample directory and files (same as before)
mkdir -p "$input_dir"
echo "File 1 content" > "$input_dir/file1.txt"
echo "File 2 content" > "$input_dir/file2.txt"
echo "File 1.bak content" > "$input_dir/file1.bak"

# Corrected way to process files with multiple extensions
for file in "$input_dir"/*.txt "$input_dir"/*.bak; do
  echo "Processing file: $file"
  # Some operations here with "$file"...
done

# Alternative solution using a single glob pattern and brace expansion
# for file in "$input_dir"/*.{txt,bak}; do
#   echo "Processing file: $file"
#   # some operations here with "$file"...
done

# Cleanup
rm -rf "$input_dir"