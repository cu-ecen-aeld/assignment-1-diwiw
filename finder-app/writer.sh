#!/bin/bash

# check, whether the arguments are given
if [ "$#" -ne 2 ]; then
	echo "Error: Two arguments required - a file path and a text string"
	exit 1
fi

writefile=$1
writestr=$2

# Path taken to the catalog of the full file path
dir=$(dirname "$writefile")

# Catalog creation, if exists
mkdir -p "$dir"

# Try to create a file and save the text
if echo "$writestr" > "$writefile"; then
	echo "File created and text written successfully"
else
	echo "Error: Could not create file"
	exit 1
fi

exit 0
