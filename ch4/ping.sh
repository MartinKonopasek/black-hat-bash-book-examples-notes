#!/bin/bash

FILE="${1}"

if [[ -z "${FILE}" ]]; then
    echo "File must be provided!"
    exit 1
fi

while read -r host; do
    if ping -c 1 -W 1 -w 1 "${host}" &> /dev/null; then
        echo "${host} is up."
    fi
done < "${FILE}"