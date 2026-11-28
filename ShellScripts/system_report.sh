#!/usr/bin/env bash
# Print a short report about the current system.
set -u

echo "===== System Report ====="
echo "Date      : $(date)"
echo "User      : $(whoami)"
echo "Kernel    : $(uname -sr)"
echo "Directory : $(pwd)"

echo
echo "--- Disk usage (current drive) ---"
df -h .

echo
echo "--- Memory ---"
if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "The 'free' command is not available on this system."
fi
