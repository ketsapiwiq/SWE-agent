#!/bin/bash
# Search the web using curl and grep
# Usage: search_www.sh <search_term> <url>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_term> <url>"
    exit 1
fi

search_term=$1
url=$2

# Fetch the content of the URL and search for the term
content=$(curl -s "$url")
echo "$content" | grep --color=always "$search_term"
