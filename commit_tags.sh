#!/bin/bash

# Script to commit tag namings from Podspec files to local git
# Extracts tag names and creates local git tags without pushing

echo "Extracting and committing tag namings from Podspec files..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: Not in a git repository. Please run this script from a git repository."
    exit 1
fi

# Function to extract tag name from podspec file
extract_tag_name() {
    local podspec_file="$1"
    
    # Extract pod name
    local pod_name=$(grep -E '^\s*s\.name\s*=' "$podspec_file" | sed -E 's/^[^\"]*\"([^\"]+)\".*$/\1/')
    
    # Extract version
    local version=$(grep -Eo 's\.version[[:space:]]*=[[:space:]]*"[^"]+"' "$podspec_file" | grep -Eo '"[^"]+"' | tr -d '"')
    
    if [ -n "$pod_name" ] && [ -n "$version" ]; then
        echo "$pod_name.$version"
    else
        echo ""
    fi
}

# Function to check if tag already exists
tag_exists() {
    local tag_name="$1"
    git tag -l "$tag_name" | grep -q "^$tag_name$"
}

# Arrays to track tag status
declare -a newly_created_tags
declare -a existing_tags

# Process all .podspec files
for podspec_file in *.podspec; do
    if [ -f "$podspec_file" ]; then
        echo "Processing: $podspec_file"
        
        # Extract tag name
        tag_name=$(extract_tag_name "$podspec_file")
        
        if [ -n "$tag_name" ]; then
            echo "  Tag name: $tag_name"
            
            # Check if tag already exists
            if tag_exists "$tag_name"; then
                echo "  ⚠ Warning: Tag '$tag_name' already exists, skipping..."
                existing_tags+=("$tag_name")
            else
                # Create the tag
                echo "  Creating git tag: $tag_name"
                if git tag "$tag_name"; then
                    echo "  ✓ Successfully created tag: $tag_name"
                    newly_created_tags+=("$tag_name")
                else
                    echo "  ✗ Failed to create tag: $tag_name"
                fi
            fi
        else
            echo "  ⚠ Warning: Could not extract tag name from $podspec_file"
        fi
        echo ""
    fi
done

echo "Tag creation completed!"
echo ""
echo "Summary of created tags:"
echo "========================"

# Function to check if tag is in array
tag_in_array() {
    local tag_name="$1"
    shift
    local array=("$@")
    for tag in "${array[@]}"; do
        if [[ "$tag" == "$tag_name" ]]; then
            return 0
        fi
    done
    return 1
}

for podspec_file in *.podspec; do
    if [ -f "$podspec_file" ]; then
        tag_name=$(extract_tag_name "$podspec_file")
        if [ -n "$tag_name" ]; then
            if tag_in_array "$tag_name" "${existing_tags[@]}"; then
                echo "✓ $tag_name (already existed)"
            elif tag_in_array "$tag_name" "${newly_created_tags[@]}"; then
                echo "✓ $tag_name (newly created)"
            else
                echo "? $tag_name (status unknown)"
            fi
        fi
    fi
done

echo ""
echo "Note: Tags have been created locally only. To push tags to remote, run:"
echo "  git push --tags"
echo ""
echo "To see all local tags:"
echo "  git tag -l" 