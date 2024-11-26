#!/bin/bash

# Define variables
GREETING="Welcome TO Shell Scripting!!!!"
NAME="SIVARAMAKRISHNA"

if [[ -z $GREETING && $NAME]]; then
    echo "echo string is empty"
elif [[ -n $GREETING && $NAME ]]; then
    echo "String is not empty"
fi

# Use variables
echo "$GREETING, Mr.$NAME!" # Output: Hello, World!
