#!/bin/bash

# Source directories using glob expressions
source_dirs=(
  "Workspace/Extras/Extensions/Tavanoteam/TavanoTeam_Helpers_Extension/Sass"
)

# Parent destination directory
dest_dir="../Helpers"

# Check if each source directory exists
for dir in "${source_dirs[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "Error: Source directory not found: $dir"
    exit 1
  fi
done

# Create the parent destination directory if it doesn't exist
mkdir -p "$dest_dir"

# Iterate over each source directory and generate SassDoc
for dir in "${source_dirs[@]}"; do
  # Extract the directory name for documentation subfolder
  dir_name=$(basename -- "$dir")

  # Create a subdirectory for each source directory within the destination directory
  dest_subdir="$dest_dir/$dir_name"
  mkdir -p "$dest_subdir"

  # Generate SassDoc for the source directory
  echo "Generating SassDoc for: $dir"
  sassdoc "$dir/**/*.scss" --dest "$dest_subdir"
done

echo "SassDoc generation complete."
