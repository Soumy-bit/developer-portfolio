#!/usr/bin/env python3
"""Fetch sample users from the JSONPlaceholder API and save them as JSON."""

import json
import sys
import urllib.error
import urllib.request
from pathlib import Path

DEFAULT_URL = "https://jsonplaceholder.typicode.com/users"
OUTPUT_FILE = Path(__file__).resolve().parent / "users.json"


def fetch_json(url):
    """Send a GET request and return the decoded JSON response."""
    request = urllib.request.Request(url, headers={"User-Agent": "DeveloperPortfolio"})
    with urllib.request.urlopen(request, timeout=10) as response:
        return json.load(response)


def main():
    url = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_URL
    try:
        users = fetch_json(url)
    except (urllib.error.URLError, TimeoutError, json.JSONDecodeError) as error:
        print(f"Request failed: {error}", file=sys.stderr)
        return 1

    OUTPUT_FILE.write_text(json.dumps(users, indent=2) + "\n", encoding="utf-8")

    print(f"Saved {len(users)} users to {OUTPUT_FILE.name}")
    for user in users:
        print(f"{user['id']:>2}. {user['name']} ({user['address']['city']})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
