#!/bin/bash

# Script to update version numbers in all Podspec files
# Increments the last version number by 1

echo "Updating version numbers in Podspec files..."

# Function to increment the last version number
increment_version() {
    local version="$1"
    
    # Split version by dots
    IFS='.' read -ra VERSION_PARTS <<< "$version"
    local num_parts=${#VERSION_PARTS[@]}
    
    if [ $num_parts -gt 0 ]; then
        # Increment the last part
        local last_part=${VERSION_PARTS[$((num_parts-1))]}
        local new_last_part=$((last_part + 1))
        VERSION_PARTS[$((num_parts-1))]=$new_last_part
        
        # Reconstruct version string
        local new_version=""
        for i in "${!VERSION_PARTS[@]}"; do
            if [ $i -eq 0 ]; then
                new_version="${VERSION_PARTS[$i]}"
            else
                new_version="$new_version.${VERSION_PARTS[$i]}"
            fi
        done
        
        echo "$new_version"
    else
        echo "$version"
    fi
}

# Process all .podspec files
for podspec_file in *.podspec; do
    if [ -f "$podspec_file" ]; then
        echo "Processing: $podspec_file"
        
        # Extract current version - robust extraction
        current_version=$(grep -Eo 's.version[[:space:]]*=[[:space:]]*"[^"]+"' "$podspec_file" | grep -Eo '"[^"]+"' | tr -d '"')
        
        if [ -n "$current_version" ]; then
            echo "  Current version: $current_version"
            
            # Increment version
            new_version=$(increment_version "$current_version")
            echo "  New version: $new_version"
            
            # Update version line - robust to leading whitespace
            sed -i.bak "s/\(^[[:space:]]*s\.version[[:space:]]*=[[:space:]]*\"\)[^\"]*\(\".*\)/\1$new_version\2/" "$podspec_file"
            
            # Update tag line (extract pod name and update tag)
            pod_name=$(grep -E '^\s*s\.name\s*=' "$podspec_file" | sed -E 's/^[^\"]*\"([^\"]+)\".*$/\1/')
            if [ -n "$pod_name" ]; then
                echo "  Debug: pod_name='$pod_name', new_version='$new_version'"
                echo "  Debug: Running perl command..."
                perl -0777 -i -pe "s/(:tag\\s*=>\\s*)'$pod_name\\.[^']*'/\\1'$pod_name.$new_version'/gs" "$podspec_file"
                echo "  Debug: Perl command completed"
            fi
            
            # Remove backup files
            rm -f "$podspec_file.bak"
            
            echo "  ✓ Updated $podspec_file"
        else
            echo "  ⚠ Warning: Could not extract version from $podspec_file"
        fi
        echo ""
    fi
done

echo "Version update completed!"
echo ""
echo "Summary of changes:"
echo "==================="
for podspec_file in *.podspec; do
    if [ -f "$podspec_file" ]; then
        new_version=$(grep -Eo 's.version[[:space:]]*=[[:space:]]*"[^"]+"' "$podspec_file" | grep -Eo '"[^"]+"' | tr -d '"')
        pod_name=$(grep -E '^\s*s\.name\s*=' "$podspec_file" | sed -E 's/.*name\s*=\s*"([^"]+)".*/\1/')
        echo "$pod_name: $new_version"
    fi
done 