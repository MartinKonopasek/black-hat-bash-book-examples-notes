#!/bin/bash

FILE="${1}"

touch "${FILE}"
until [[ -s "${FILE}" ]]; do
    echo "${FILE} is empty..."
    echo "Checking again in 2 seconds..."
    sleep 2
done

echo "${FILE} have some content!"