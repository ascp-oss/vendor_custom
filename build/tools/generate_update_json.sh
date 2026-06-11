#!/bin/bash

# This script generates a JSON update file for ASCP OS.
#
# Usage: ./generate_update_json.sh <device> <product_out_dir> <zip_path>
#

set -e

DEVICE="$1"
PRODUCT_OUT="$2"
ZIP_PATH="$3"
JSON_OUTPUT_DIR="$PRODUCT_OUT"
JSON_PATH="${JSON_OUTPUT_DIR}/${DEVICE}.json"
FILENAME=$(basename "${ZIP_PATH}")

if [ -z "$DEVICE" ] || [ -z "$PRODUCT_OUT" ] || [ -z "$ZIP_PATH" ]; then
    echo "Usage: $0 <device> <product_out_dir> <zip_path>"
    exit 1
fi

if [ ! -f "$ZIP_PATH" ]; then
    echo "Error: Zip file not found at $ZIP_PATH"
    exit 1
fi

BUILD_PROP_PATH="${PRODUCT_OUT}/system/build.prop"
if [ ! -f "$BUILD_PROP_PATH" ]; then
    BUILD_PROP_PATH="${PRODUCT_OUT}/system/system/build.prop"
fi

DATETIME=$(grep -m1 '^ro\.system\.build\.date\.utc=' "$BUILD_PROP_PATH" 2>/dev/null | cut -d= -f2)
if [ -z "$DATETIME" ]; then
    DATETIME=$(date +%s)
fi

SIZE=$(stat -c%s "$ZIP_PATH")
ID=$(sha256sum "$ZIP_PATH" | awk '{print $1}')
MD5=$(md5sum "$ZIP_PATH" | awk '{print $1}')
VERSION=$(echo "$FILENAME" | cut -d- -f2 | sed 's/^v//')
URL="https://sourceforge.net/projects/project-ascp/files/${DEVICE}/${FILENAME}"

# Create JSON content
JSON_CONTENT=$(cat <<EOF
{
    "response": [
        {
            "datetime": "${DATETIME}",
            "filename": "${FILENAME}",
            "id": "${ID}",
            "md5": "${MD5}",
            "size": ${SIZE},
            "url": "${URL}",
            "version": "${VERSION}"
        }
    ]
}
EOF
)

# Write to file
echo "$JSON_CONTENT" > "$JSON_PATH"

echo "$JSON_PATH"
