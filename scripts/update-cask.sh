#!/usr/bin/env bash
set -e

REPO=$1
CASK_FILE=$2

if [ -z "$REPO" ] || [ -z "$CASK_FILE" ]; then
    echo "Usage: $0 <owner/repo> <cask-file>"
    exit 1
fi

# Authenticated API calls when a token is available: unauthenticated requests are
# rate limited per IP, which CI runners share and exhaust quickly.
CURL_AUTH=()
if [ -n "$GITHUB_TOKEN" ]; then
    CURL_AUTH=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi

# 1. Get latest version from GitHub
LATEST_VERSION=$(curl -s "${CURL_AUTH[@]}" "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
VERSION_CLEAN=${LATEST_VERSION#v}

CURRENT_VERSION=$(grep -E '^[[:space:]]*version "' "$CASK_FILE" | sed -E 's/.*"([^"]+)".*/\1/')

# Bail out before touching the file: an empty version would make the sed below
# blank out the version string in the cask.
if [ -z "$VERSION_CLEAN" ]; then
    echo "Error: could not resolve latest release of $REPO (rate limited or no release?)"
    exit 1
fi
if [ -z "$CURRENT_VERSION" ]; then
    echo "Error: could not read current version from $CASK_FILE"
    exit 1
fi

echo "Checking $REPO: Current $CURRENT_VERSION, Latest $VERSION_CLEAN"

if [ "$CURRENT_VERSION" == "$VERSION_CLEAN" ]; then
    echo "$REPO is up to date."
    exit 0
fi

echo "Updating $CASK_FILE to $VERSION_CLEAN..."

# 2. Update version in cask
OLD_VERSION_ESC=$(echo "$CURRENT_VERSION" | sed 's/\./\\./g')
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/version \"$OLD_VERSION_ESC\"/version \"$VERSION_CLEAN\"/g" "$CASK_FILE"
else
    sed -i "s/version \"$OLD_VERSION_ESC\"/version \"$VERSION_CLEAN\"/g" "$CASK_FILE"
fi

# 3. Update SHA256 for the download URL
# Extract the url template and resolve version interpolation
URL_TEMPLATE=$(grep -E '^[[:space:]]*url "' "$CASK_FILE" | sed -E 's/.*"([^"]+)".*/\1/')
URL=$(echo "$URL_TEMPLATE" | sed "s/#{version}/$VERSION_CLEAN/g")

echo "Fetching $URL..."
SHA256=$(curl -sL "$URL" | shasum -a 256 | cut -d ' ' -f 1)
if [ -z "$SHA256" ]; then
    echo "Error: Could not calculate SHA256 for $URL"
    exit 1
fi
echo "New SHA256: $SHA256"

# Replace sha256 in cask file
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' -E "s/sha256 \"[a-f0-9]+\"/sha256 \"$SHA256\"/" "$CASK_FILE"
else
    sed -i -E "s/sha256 \"[a-f0-9]+\"/sha256 \"$SHA256\"/" "$CASK_FILE"
fi

echo "Successfully updated $CASK_FILE"
