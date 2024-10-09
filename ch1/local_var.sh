#!/bin/bash

PUBLISHER="No Starch Press"

print_book(){
    # sets variable only for function
    local book
    book="Black Hat Bash"
    echo "${book} by ${PUBLISHER}"
}

print_book

# book variable won't be printed
echo "${book} by ${PUBLISHER}"