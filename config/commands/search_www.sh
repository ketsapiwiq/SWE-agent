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
    local SEARX_URL=${SEARX_URL:-127.0.0.1:9999}"

    # Use Searx API to search for the term
    local search_url="http://${SEARX_URL}/search"
    local params="q=${search_term}&engines=google&format=json"


    if ! command -v curl &> /dev/null; then
        echo "Error: curl is not installed or not found in PATH."
        return 1
    fi
    echo "curl -s \"${search_url}?${params}\""
    local results=$(curl -s "${search_url}?${params}")
    echo "$(jq $results)"
    export SEARCH_RESULTS=$results
}