#!/bin/bash

# -r option prevents read from treating backslashes as escape characters
echo "First name:"
read -r firstname

echo "Last name:"
read -r lastname

echo "${firstname} ${lastname}"