#!/usr/bin/env bash
# pipefail: a failed download must not be hashed as if it were the release asset.
set -eo pipefail

REPO=$1
MANIFEST=$2

if [ -z "$REPO" ] || [ -z "$MANIFEST" ]; then
    echo "Usage: $0 <owner/repo> <scoop-manifest>"
    exit 1
fi

# Authenticated API calls when a token is available: unauthenticated requests are
# rate limited per IP, which CI runners share and exhaust quickly.
CURL_AUTH=()
if [ -n "$GITHUB_TOKEN" ]; then
    CURL_AUTH=(-H "Authorization: Bearer $GITHUB_TOKEN")
fi

LATEST_VERSION=$(curl -s "${CURL_AUTH[@]}" "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
VERSION_CLEAN=${LATEST_VERSION#v}

CURRENT_VERSION=$(jq -r '.version // empty' "$MANIFEST")

if [ -z "$VERSION_CLEAN" ]; then
    echo "Error: could not resolve latest release of $REPO (rate limited or no release?)"
    exit 1
fi
if [ -z "$CURRENT_VERSION" ]; then
    echo "Error: could not read current version from $MANIFEST"
    exit 1
fi

echo "Checking $REPO: Current $CURRENT_VERSION, Latest $VERSION_CLEAN"

if [ "$CURRENT_VERSION" == "$VERSION_CLEAN" ]; then
    echo "$REPO is up to date."
    exit 0
fi

echo "Updating $MANIFEST to $VERSION_CLEAN..."

# Rewrite through a temp file and `cat` back so the manifest keeps its permissions.
edit() {
    local tmp
    tmp=$(mktemp)
    jq --indent 4 "$@" "$MANIFEST" >"$tmp"
    cat "$tmp" >"$MANIFEST"
    rm -f "$tmp"
}

# The version and every URL embed the version literally; split/join replaces it
# without treating the dots as a regex.
edit --arg old "$CURRENT_VERSION" --arg new "$VERSION_CLEAN" \
    'walk(if type == "string" then split($old) | join($new) else . end)'

for ARCH in $(jq -r '.architecture | keys[]' "$MANIFEST"); do
    URL=$(jq -r --arg a "$ARCH" '.architecture[$a].url' "$MANIFEST")
    # Strip Scoop's `#/name` rename fragment before downloading.
    echo "Fetching ${URL%%#*}..."
    SHA256=$(curl -fsSL "${URL%%#*}" | shasum -a 256 | cut -d ' ' -f 1)
    echo "New SHA256: $SHA256"
    edit --arg a "$ARCH" --arg h "$SHA256" '.architecture[$a].hash = $h'
done

echo "Successfully updated $MANIFEST"
