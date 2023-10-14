#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $(basename "$0") <file to convert> <format to convert to>"
    exit 1
fi

echo "$1 $2"