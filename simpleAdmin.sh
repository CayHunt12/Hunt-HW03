#!/bin/bash

# simpleAdmin.sh
# This script performs the following tasks:
# 1. Creates a directory in the current working directory using the first argument as the name.
# 2. Creates a directory inside the directory created in item 1 using the second argument as the name.
# 3. Creates a text file using the third argument as the name, writes “Hello World!” to it, and saves it in the directory created in item 2.
# 4. Creates a soft link from the working directory to the sub-directory created in item 2 and uses the fourth argument as the name of the link.
# 5. Displays messages to the user indicating what actions are being taken.

# Command line arguments:
# $1 - Name of the first directory
# $2 - Name of the second directory (inside the first directory)
# $3 - Name of the text file to be created
# $4 - Name of the soft link to be created

# Example invocation:
# ./simpleAdmin.sh dir1 dir2 file.txt linkname

# Check if the correct number of arguments is provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <dir1> <dir2> <file> <link>"
    exit 1
fi

# Create the first directory
echo "Creating directory $1..."
mkdir "$1"

# Create the second directory inside the first directory
echo "Creating directory $2 inside $1..."
mkdir "$1/$2"

# Create the text file and write "Hello World!" to it
echo "Creating file $3 with 'Hello World!' inside $1/$2..."
echo "Hello World!" > "$1/$2/$3"

# Create the soft link
echo "Creating soft link $4 to $1/$2..."
ln -s "$1/$2" "$4"

# Display completion message
echo "All tasks completed successfully!"
