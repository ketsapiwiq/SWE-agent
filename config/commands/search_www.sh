#!/bin/bash
# Search the web using curl and grep
# Usage: search_www.sh <search_term> <url>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_term> <url>"
    exit 1
fi

search_term=$1
url=$2

# Use Google Custom Search JSON API to search for the term
# Read API key and search engine ID from custom.yaml configuration
api_key=$(grep 'api_key:' ../custom.yaml | cut -d " " -f 2)
search_engine_id=$(grep 'search_engine_id:' ../custom.yaml | cut -d " " -f 2)
search_url="https://www.googleapis.com/customsearch/v1?q=$search_term&key=$api_key&cx=$search_engine_id"

# Fetch the search results
results=$(curl -s "$search_url")
echo "$results"
