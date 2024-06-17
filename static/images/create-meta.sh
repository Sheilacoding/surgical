#!/bin/bash

# Check if an argument is passed (the image file path)
if [ -z "$1" ]; then
  echo "No image file provided"
  exit 1
fi

# Get the image file path
image_file=$1

# Extract the file name without the extension
file_name=$(basename "$image_file" .jpg)

# Create a metadata file
meta_file="${file_name}.meta"

# Prompt for title and tags
echo "Enter caption for $image_file:"
read title
echo "Enter tags for $image_file (comma-separated):"
read tags

# Write metadata to the file
echo "Caption: $title" > "$meta_file"
echo "Tags: $tags" >> "$meta_file"

echo "Metadata created for $image_file"