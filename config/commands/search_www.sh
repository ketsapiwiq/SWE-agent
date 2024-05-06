# @yaml
# signature: search_www <search_term>
# docstring: Searches the web using the Searx API and returns the results.
# arguments:
#   search_term:
#     type: string
#     description: the term to search for
#     required: true

search_www() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: search_www <search_term>"
        return 1
    fi

    local search_term="$1"
    local SEARX_URL="searx.example.com" # assuming this variable is set

    # Use Searx API to search for the term
    local search_url="https://$SEARX_URL/search?q=$search_term&format=json&engines=google"

    if ! command -v curl &> /dev/null; then
        echo "Error: curl is not installed or not found in PATH."
        return 1
    fi

    local results=$(curl -s "$search_url")
    echo "$results"
}
