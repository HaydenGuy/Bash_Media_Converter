#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $(basename "$0") <file or dir to convert>"
    exit 1
fi


if [ -d "$1" ]; then
    arg_1="dir"
elif [ -f "$1" ]; then
    arg_1="file"
else
    echo "Error reading file"
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

PS3="What format do you want to convert to? "

if [ "$conversion_type" == "video" ]; then
    video_formats=("mp4" "avi" "mkv" "mov" "wmv" "flv" "webm" "3gp" "mpg")

    select choice in "${video_formats[@]}"; do
        case "$choice" in
            "mp4")
                format="mp4"
                break
                ;;
            "avi")
                format="avi"
                break
                ;;
            "mkv")
                format="mkv"
                break
                ;;
            "mov")
                format="mov"
                break
                ;;
            "wmv")
                format="wmv"
                break
                ;;
            "flv")
                format="flv"
                break
                ;;
            "webm")
                format="webm"
                break
                ;;
            "3gp")
                format="3gp"
                break
                ;;
            "mpg")
                format="mpg"
                break
                ;;
            *)
                echo "Invalid option. Please select a valid video format."
                ;;
        esac
    done

elif [ "$conversion_type" == "audio" ]; then
    audio_formats=("mp3" "wav" "aac" "flac" "ogg" "wma" "m4a" "opus")

    select choice in "${audio_formats[@]}"; do
        case "$choice" in
            "mp3")
                format="mp3"
                break
                ;;
            "wav")
                format="wav"
                break
                ;;
            "aac")
                format="aac"
                break
                ;;
            "flac")
                format="flac"
                break
                ;;
            "ogg")
                format="ogg"
                break
                ;;
            "wma")
                format="wma"
                break
                ;;
            "m4a")
                format="m4a"
                break
                ;;
            "opus")
                format="opus"
                break
                ;;
            *)
                echo "Invalid option. Please select a valid audio format."
                ;;
        esac
    done

else
    image_formats=("jpg" "jpeg" "png" "gif" "bmp" "tiff" "svg")

    select choice in "${image_formats[@]}"; do
        case "$choice" in
            "jpg")
                format="jpg"
                break
                ;;
            "jpeg")
                format="jpeg"
                break
                ;;
            "png")
                format="png"
                break
                ;;
            "gif")
                format="gif"
                break
                ;;
            "bmp")
                format="bmp"
                break
                ;;
            "tiff")
                format="tiff"
                break
                ;;
            "svg")
                format="svg"
                break
                ;;
            *)
                echo "Invalid option. Please select a valid image format."
                ;;
        esac
    done
fi