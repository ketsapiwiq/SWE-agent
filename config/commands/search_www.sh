# @yaml
# signature: search_www <search_term>
# docstring: Searches the web using the Searx API and returns the results.
# arguments:
#   search_term:
#     type: string
#     description: the term to search for
#     required: true
#!/bin/bash
# Search the web using the Searx API
# Usage: search_www.sh <search_term>

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <search_term>"
    exit 1
fi

search_term=$1

# Use Searx API to search for the term
search_url="https://searx.example.com/search?q=$search_term&format=json&engines=google"

# Fetch the search results
results=$(curl -s "$search_url")
echo "$results"
