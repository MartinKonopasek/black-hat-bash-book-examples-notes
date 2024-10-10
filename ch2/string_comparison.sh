#!/bin/bash

STRING1="${1}"
STRING2="${2}"

if [[ "${STRING1}" == "${STRING2}" ]]; then
    echo "equal"
else 
    echo "not equal"
fi