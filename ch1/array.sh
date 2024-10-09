#!/bin/bash

IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)

# prints all elements
echo "${IP_ADDRESSES[*]}"

# prints first element
echo "${IP_ADDRESSES[0]}"

# deletes array element
unset IP_ADDRESSES[2]

# changes array element value
IP_ADDRESSES[0]="192.168.1.10"