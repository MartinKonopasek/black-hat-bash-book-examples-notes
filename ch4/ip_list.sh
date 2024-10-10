#!/bin/bash

NETWORK="${1}"

if [[ -z "${NETWORK}" ]]; then
    echo "Network part of IP must be provided!"
    echo "Example: 172.168.10"
    exit 1
fi

for ip in $(seq 1 254); do
    echo "${NETWORK}.${ip}" >> "${NETWORK}-hosts.txt" 
done