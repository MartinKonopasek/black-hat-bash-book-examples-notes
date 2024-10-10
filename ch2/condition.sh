#!/bin/bash

FILENAME="${1}"

if [[ -f "${FILENAME}" ]]; then
    echo "${FILENAME} exists."
    exit 0
else
    echo "${FILENAME} doesn't exist."
    exit 1
fi