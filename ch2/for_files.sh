#!/bin/bash

for i in $(seq 1 3); do
    touch "example_file${i}"
done

for file in example_file*; do
    if [[ "${file}" == "example_file1" ]]; then
        echo "Skipping first file"
        continue
    fi

    echo "${RANDOM}" > "${file}"
done