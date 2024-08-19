#!/bin/bash

# Define the directory containing the image files
image_dir=$(dirname -- "$1")  # Get directory from first argument (optional)

# Loop through all files starting with "Screenshot at " and ending with ".png"
for file in "$image_dir"/*.png; do
  # Extract filename without path
  filename=$(basename "$file")
  
  # Construct markdown image syntax
  markdown_image="![]($filename)"
  
  # Append markdown image syntax to output file
  echo "$markdown_image" >> markdown.images.txt
done

echo "Markdown image references written to markdown.images.txt"
