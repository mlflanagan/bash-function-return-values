#!/bin/bash

# Demonstration of returning values from a called function in Bash.

function fn() {
    echo "0"
    return 0
}

# Use $(...) to capture text sent to stdout by echo
output=$(fn)

# Use $? to get the result code of the previous command
retval=$?

[ "$output" = "0" ] && [ "$retval" -eq 0 ] || echo "failed"

