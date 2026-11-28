#!/usr/bin/env bash
# Save this computer's system profile and basic Linux command outputs.
# Usage: bash Linux/collect_system_info.sh
set -u

cd "$(dirname "$0")" || exit 1

# Print a command, then its output.
run() {
    echo "\$ $*"
    if command -v "$1" >/dev/null 2>&1; then
        "$@" 2>&1
    else
        echo "(command not available on this system)"
    fi
    echo
}

{
    echo "# System Profile"
    echo
    echo "Collected on: $(date)"
    echo
    echo '```text'
    run uname -a
    run cat /etc/os-release
    run lscpu
    run free -h
    run df -h
    echo '```'
} > system_profile.md

{
    run whoami
    run pwd
    run ls -la
    run date
    run uptime
    run ps
    run id
    run which bash
    run bash --version
} > command_outputs.txt

echo "Created Linux/system_profile.md and Linux/command_outputs.txt"
echo "Read both files before committing them: this repository is public."
