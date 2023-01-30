#!/bin/bash
read -p "Enter the network IP address (e.g. 192.168.12): " network
read -p "Enter the range of IP addresses to scan (e.g. 1-255): " range

IFS='-' read -a range_array <<< "$range"
start=${range_array[0]}
end=${range_array[1]}

for i in $(seq $start $end); do
    ping -c 1 $network.$i > /dev/null
    if [ $? -eq 0 ]; then
        echo "$network.$i is in use"
    else
        echo "$network.$i is not in use"
    fi
done
