#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $(basename "$0") <file/dir to convert>"
    exit 1
fi

PS3="What would you like to convert your file(s) to? "
options=("Video" "Audio" "Image" "Exit")

conversion_type=""

select choice in "${options[@]}"; do
    case "$choice" in
        "Video")
            conversion_type="video"
            break
            ;;
        "Audio")
            conversion_type="audio"
            break
            ;;
        "Image")
            conversion_type="image"
            break
            ;;
        "Exit")
            exit 1
            ;;
        *)
            echo -e "\nInvalid option. Please enter a number from 1 to ${#options[@]}\n"
            ;;
    esac
done

if [ -d "$1" ]; then
    echo "dir"
elif [ -f "$1" ]; then
    echo "file"
else
    echo "error"
fi