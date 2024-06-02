#!/bin/sh


# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
	echo "Error: Two arguments required - a directory path and a search string"
	exit 1
fi

filesdir=$1
searchstr=$2

# Check if the provided path is a directory
if [ ! -d "$filesdir" ]; then
	echo "Error: $filesdir is not a directory"
	exit 1
fi

# Find the number of files in the directory and subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Find the number of matching lines in those files
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines $num_matching_lines"

exit 0