#!/bin/bash

FILE="${1}"

while [[ ! -f "${FILE}" ]]; do
    echo "The file ${FILE} does not yet exist..."
    echo "Checking again in 2 seconds..."
    sleep 2
done

echo "File was found! Exiting..."