#!/bin/bash

check_if_root(){
    if [[ "${EUID}" -eq "0" ]]; then
        return 0
    else 
        return 1
    fi
}

if check_if_root; then
    echo "User is root!"
else 
    echo "User isn't root!"
fi