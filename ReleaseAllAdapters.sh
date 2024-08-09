#!/bin/bash

# Find all files named "Release" in the current directory and its subdirectories,
# exclude files containing "ReleaseSDK" and "ReleaseOBH",
# and store the remaining files in an array
mapfile -t release_files < <(find . -type f -name "Release" | grep -vE 'ReleaseSDK|ReleaseOBH' | sort)

# Loop through each file in the sorted array
for release_file in "${release_files[@]}"; do
    echo "Executing $release_file"
    # Execute the script
    bash "$release_file"
done
