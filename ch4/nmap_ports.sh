#!/bin/bash

FILE="${1}"

if [[ -z "${FILE}" ]]; then
    echo "File must be provided!"
    exit 1
fi

RESULT=$(nmap -iL "${FILE}" --open | grep "Nmap scan report\|open")

while read -r line; do
    if echo "${line}" | grep "report for" >> /dev/null; then
        ip=$(echo "${line}" | awk '{print $5}')
    else
        port=$(echo "${line}" | awk '{print $1}' | awk -F '/' '{print $1}')
        echo "${ip}" >> "port-${port}.txt"
    fi
done <<< "${RESULT}"