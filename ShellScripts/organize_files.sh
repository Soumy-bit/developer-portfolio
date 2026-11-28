#!/usr/bin/env bash
# Group the files in a folder into subfolders named after their extension.
# Usage: bash organize_files.sh <folder>          (preview only)
#        bash organize_files.sh <folder> --apply  (move the files)
set -eu

if [ $# -lt 1 ] || [ ! -d "$1" ]; then
    echo "Usage: bash organize_files.sh <folder> [--apply]" >&2
    exit 1
fi

folder=${1%/}
mode=${2:-preview}
count=0

for file in "$folder"/*; do
    [ -f "$file" ] || continue
    name=$(basename "$file")

    # Skip files without an extension.
    case "$name" in
        *.*) extension=${name##*.} ;;
        *) continue ;;
    esac
    [ -n "$extension" ] || continue

    target="$folder/${extension}_files"
    if [ -e "$target/$name" ]; then
        echo "Skipped $name: it already exists in ${extension}_files/"
        continue
    fi

    if [ "$mode" = "--apply" ]; then
        mkdir -p "$target"
        mv -n -- "$file" "$target/"
        echo "Moved $name -> ${extension}_files/"
    else
        echo "Would move $name -> ${extension}_files/"
    fi
    count=$((count + 1))
done

echo "Files matched: $count"
if [ "$mode" != "--apply" ]; then
    echo "Preview only. Add --apply to move the files."
fi
