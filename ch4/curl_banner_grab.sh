#!/bin/bash

TARGET="${1}"

if [[ -z "${TARGET}" ]]; then
    echo "Target must be entered!"
    echo "Example: 192.168.1.1:80"
    exit 1
fi

banner=$(curl -s --head "${TARGET}" | grep Server | awk -F ': ' '{print $2}')

echo "Banner for ${TARGET} - ${banner}"