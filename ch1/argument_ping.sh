#!/bin/bash

SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Script name: ${SCRIPT_NAME}"
echo "Pinging ${TARGET}..."
ping -c 5 "$TARGET"

# $* = all provided arguments
# $@ = all provided arguments (individually quoted)
# $# = total number of provided arguments