We should edit "search www" command to search on the searx api in the commands/, edit config/commands/search_www.sh.

Now it's saying; ValueError: Non-shell file config/commands/search_www.sh does not contain any commands.
If you want to use a non-shell file as a command (script), it should contain exactly one @yaml docstring. If you want to use a file as a utility script, it should start with an underscore (e.g. _utils.py).

Take an example in the same folder