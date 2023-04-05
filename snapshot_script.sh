#!/bin/bash

# Check if endpoint argument was provided

if [ -z "$1" ]

  then

    echo "Error: No endpoint argument provided"

    exit 1

fi

# Create a directory to store the snapshot

snapshot_dir="/snapshots/$1"

mkdir -p $snapshot_dir

# Take a snapshot of the system

tar -zcvf "$snapshot_dir/snapshot_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" /

