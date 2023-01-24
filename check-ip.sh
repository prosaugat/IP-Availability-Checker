#!/bin/bash
network="192.168.12"
for i in {1..255}; do
    ping -c 1 $network.$i > /dev/null
    if [ $? -eq 0 ]; then
        echo "$network.$i is in use"
    else
        echo "$network.$i is not in use"
    fi
done
