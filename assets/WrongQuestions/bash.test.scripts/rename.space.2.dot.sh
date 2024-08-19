#!/bin/bash

# Loop through each file in the current directory
for filename in *; do
  # Check if the filename contains spaces
  if [[ $filename =~ " " ]]; then
    # Use parameter expansion to replace spaces with periods
    new_filename=${filename// /.}
    # Rename the file with the new name
    mv "$filename" "$new_filename"
    # Print a message for confirmation
    echo "Renamed '$filename' to '$new_filename'"
  fi
done

echo "Finished renaming files."
