#!/bin/bash

# Define the prefix for image URLs
PREFIX="/bookkeeping/assets/nacpb_material/bookkeeping/"

# Output filename
OUTPUT_FILE="png.mk.2.md"

# Counter for numbering images
counter=1

# Construct markdown table header; Open & Append
command="|NACPB Quiz Questions|"
echo "$command" >> "$OUTPUT_FILE"
command="|:-:|"
echo "$command" >> "$OUTPUT_FILE"

# Loop through all PNG files starting with "Screenshot"
for file in Screenshot*; do
  # Extract filename without extension
  filename="${file}"

  # Construct markdown image command
  command="| $counter. ![](${PREFIX}${filename}) |"

  # Append the command to the output file
  echo -n "$command" >> "$OUTPUT_FILE"
  echo  >> "$OUTPUT_FILE"  # Append newline after each command

  # Increment counter
  ((counter++))
done

echo "Markdown image commands written to '$OUTPUT_FILE'"

