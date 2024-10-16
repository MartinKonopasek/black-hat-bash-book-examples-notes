#!/bin/bash

URL="http://172.16.10.12"
ROBOTS_FILE="robots.txt"

echo "${URL}/${ROBOTS_FILE}"
echo "-------------------------------"
while read -r line; do
    if [[ -n "${line}" ]]; then
        path=$(echo "${line}" | awk '{print $2}')
        status_code=$(curl -s -o /dev/null -w "%{http_code}" "${URL}"/"${path}")
        echo "${path}": "${status_code}"
    fi
done < <(curl -s "${URL}/${ROBOTS_FILE}" | grep "Disallow: ")