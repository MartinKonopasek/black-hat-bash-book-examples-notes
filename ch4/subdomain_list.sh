#!/bin/bash

DOMAIN="${1}"
FILE="${2}"

if [[ -z "${DOMAIN}" ]] || [[ -z "${FILE}" ]]; then
    echo "Domain and file must be provided!"
    exit 1
fi

while read -r subdomain; do
    echo "${subdomain}.${DOMAIN}"
done < "${FILE}"