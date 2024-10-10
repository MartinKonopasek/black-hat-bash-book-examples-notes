#!/bin/bash

NAME="${1}"
DOMAIN="${2}"
OUTPUT_FILE="output.csv"

if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then 
    echo "Name and domain must be provided!"
    exit 1
fi

if ping -c 1 "${DOMAIN}" &> /dev/null; then
    MESSAGE="success"
else
    MESSAGE="failure"
fi

echo "status,name,domain,timestamp" > "${OUTPUT_FILE}"
echo "${MESSAGE},${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"