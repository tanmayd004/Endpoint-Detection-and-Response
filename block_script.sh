#!/bin/bash

# Check if the IP address or domain to block is provided

if [ -z "$1" ]

then

    echo "Error: IP address or domain to block is not provided."

    exit 1

fi

# Block the IP address or domain using firewall rules

firewall-cmd --add-rich-rule='rule family=ipv4 source address="$1" reject' --permanent

firewall-cmd --reload

echo "Successfully blocked IP address or domain: $1"

