#!/usr/bin/env bash
set -e

REPO=$1
FORMULA_FILE=$2

if [ -z "$REPO" ] || [ -z "$FORMULA_FILE" ]; then
    echo "Usage: $0 <owner/repo> <formula-file>"
    exit 1
fi

# 1. Get latest version from GitHub
LATEST_VERSION=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
# Remove 'v' prefix if present for the version variable in formula, 
# but keep it for URLs if necessary.
VERSION_CLEAN=${LATEST_VERSION#v}

CURRENT_VERSION=$(grep -E '^[[:space:]]*version "' "$FORMULA_FILE" | sed -E 's/.*"([^"]+)".*/\1/')

echo "Checking $REPO: Current $CURRENT_VERSION, Latest $VERSION_CLEAN"

if [ "$CURRENT_VERSION" == "$VERSION_CLEAN" ]; then
    echo "$REPO is up to date."
    exit 0
fi

echo "Updating $FORMULA_FILE to $VERSION_CLEAN..."

# 2. Update version in formula
# Escape dots in version for sed
OLD_VERSION_ESC=$(echo "$CURRENT_VERSION" | sed 's/\./\\./g')
# We need to be careful with sed differences between macOS and Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/version \"$OLD_VERSION_ESC\"/version \"$VERSION_CLEAN\"/g" "$FORMULA_FILE"
    # Also update URLs that might contain the version
    sed -i '' "s/$OLD_VERSION_ESC/$VERSION_CLEAN/g" "$FORMULA_FILE"
    # Some URLs might have v prefix
    sed -i '' "s/v$OLD_VERSION_ESC/v$VERSION_CLEAN/g" "$FORMULA_FILE"
else
    sed -i "s/version \"$OLD_VERSION_ESC\"/version \"$VERSION_CLEAN\"/g" "$FORMULA_FILE"
    sed -i "s/$OLD_VERSION_ESC/$VERSION_CLEAN/g" "$FORMULA_FILE"
    sed -i "s/v$OLD_VERSION_ESC/v$VERSION_CLEAN/g" "$FORMULA_FILE"
fi

# 3. Update SHA256 for each URL
# This is tricky because there are multiple URLs and multiple SHA256 lines.
# We will find each URL, download it, and replace the NEXT sha256 line.

# Extract all URLs
URLS=$(grep -E '^[[:space:]]*url "' "$FORMULA_FILE" | sed -E 's/.*"([^"]+)".*/\1/')

while read -r URL; do
    echo "Fetching $URL..."
    SHA256=$(curl -sL "$URL" | shasum -a 256 | cut -d ' ' -f 1)
    if [ -z "$SHA256" ]; then
        echo "Error: Could not calculate SHA256 for $URL"
        continue
    fi
    echo "New SHA256: $SHA256"
    
    # Replace the SHA256 that follows this specific URL
    # This is a bit complex with sed. We'll use a python script or a more advanced awk for precision.
    # Or just use a simple approach: find the line with the URL, and replace the sha256 on the next few lines.
    
    # Use python for reliable multi-line substitution
    python3 -c "
import sys
content = open('$FORMULA_FILE').read()
url = '$URL'
new_sha = '$SHA256'
# Find the URL and replace the NEXT sha256 occurrence
idx = content.find(url)
if idx != -1:
    sha_idx = content.find('sha256 \"', idx)
    if sha_idx != -1:
        end_sha = content.find('\"', sha_idx + 8)
        content = content[:sha_idx + 8] + new_sha + content[end_sha:]
        with open('$FORMULA_FILE', 'w') as f:
            f.write(content)
"
done <<< "$URLS"

echo "Successfully updated $FORMULA_FILE"
