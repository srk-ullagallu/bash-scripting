#!/bin/bash

set -euo pipefail
IFS=$' \n\t'

FILES=$(ls -l)

for file in $FILES;do
    echo "The list of avialable files: $file"
done