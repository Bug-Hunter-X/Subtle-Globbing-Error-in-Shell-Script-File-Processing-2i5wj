#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle error related to globbing and file names.

input_dir="/tmp/mydir"

# Create a sample directory and files
mkdir -p "$input_dir"
echo "File 1 content" > "$input_dir/file1.txt"
echo "File 2 content" > "$input_dir/file2.txt"
echo "File 1.bak content" > "$input_dir/file1.bak"

# The problematic line: processing files ending with .txt or .bak
for file in "$input_dir".txt "$input_dir".bak; do
  echo "Processing file: $file"
  # some operations here with "$file"...
done

# Cleanup
rm -rf "$input_dir"