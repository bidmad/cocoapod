#!/bin/bash

# 1. get all podspecs on the latest commit (using git diff-tree)
echo "Listing podspec files in the latest commit ..."
podspecs=$(git diff-tree --no-commit-id --name-only -r HEAD | grep -E '\.podspec$')

# 2. get tags (extract the tag value from each podspec file)
echo "Extracting tag values from podspec files ..."
declare -a tags
for podspec in $podspecs; do
  # Use sed to extract the tag value (assumes the tag is set as :tag => 'TAGVALUE' in s.source)
  tag=$(sed -nE "s/.*:tag\s*=>\s*['\"]([^'\"]+)['\"]\s*.*/\1/p" "$podspec")
  if [ -n "$tag" ]; then
    echo "Extracted tag from $podspec: $tag"
    tags+=("$tag")
  else
    echo "No tag found in $podspec."
  fi
done

# 3. get set tags (create git tags if they do not exist and push them)
echo "Creating and pushing git tags ..."
for tag in "${tags[@]}"; do
  if git rev-parse --verify --quiet "$tag" > /dev/null; then
    echo "Tag $tag already exists."
  else
    echo "Creating tag $tag ..."
    git tag "$tag"
  fi
done

# Push all tags (new and existing) to origin
echo "Pushing tags to origin ..."
git push origin "${tags[@]}"

echo "Done." 