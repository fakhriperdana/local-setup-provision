#!/bin/bash

# Check if a directory argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-git-repo>"
    exit 1
fi

# Get the target directory
REPO_DIR=$1

# Initialize the path to the .git/config file
GIT_CONFIG="$REPO_DIR/.git/config"

# Check if the .git/config file exists
if [ ! -f "$GIT_CONFIG" ]; then
    echo "No Git repository found at $REPO_DIR"
    exit 1
fi

# Text to append
CONFIG_CONTENT="
[user]
    name = Fakhri Perdana
    email = fakhrippp@gmail.com
"

# Append the content to the .git/config file
echo "$CONFIG_CONTENT" >> "$GIT_CONFIG"

# Confirm success
echo "Successfully updated $GIT_CONFIG"
