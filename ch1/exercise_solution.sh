#!/bin/bash

FIRSTNAME="${1}"
LASTNAME="${2}"

touch output.txt

date +%d/%m/%y > output.txt

echo "${FIRSTNAME} ${LASTNAME}" >> output.txt

cp output.txt backup.txt

cat output.txt