#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

GREETING="Welcome TO Shell Scripting!!!!"
NAME="SIVARAMAKRISHNA"

ld -a

if [[ -z $GREETING && $NAME ]]; then
    echo "echo string is empty"
elif [[ -n $GREETING && $NAME ]]; then
    echo "String is not empty"
fi


echo "$GREETING, Mr.$NAME!" # Output: Hello, World!

echo "The present working dir is $(pwd)"
echo "The present working dir is `pwd`"
