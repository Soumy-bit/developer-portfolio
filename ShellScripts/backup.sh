#!/usr/bin/env bash
# Create a timestamped .tar.gz backup of a folder.
# Usage: bash backup.sh <source_folder> [backup_folder]
set -eu

if [ $# -lt 1 ]; then
    echo "Usage: bash backup.sh <source_folder> [backup_folder]" >&2
    exit 1
fi

source_dir=$1
backup_dir=${2:-backups}

if [ ! -d "$source_dir" ]; then
    echo "Error: '$source_dir' is not a folder." >&2
    exit 1
fi

mkdir -p "$backup_dir"

source_path=$(cd "$source_dir" && pwd)
backup_path=$(cd "$backup_dir" && pwd)

# A backup saved inside the source folder would try to include itself.
case "$backup_path/" in
    "${source_path%/}/"*)
        echo "Error: the backup folder must be outside the source folder." >&2
        exit 1
        ;;
esac

name=$(basename "$source_path")
archive="$backup_path/${name}_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$archive" -C "$(dirname "$source_path")" "$name"
echo "Backup created: $archive"
