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

PS3="What format do you want to convert to? "

if [ "$conversion_type" == "video" ]; then
    video_formats=("mp4" "avi" "mkv" "mov" "wmv" "flv" "webm" "3gp" "mpg")
    
    select choice in "${video_formats[@]}"; do
        case "$choice" in
            "mp4")
                echo "You selected MP4 format."
                # Add code to handle MP4 format here
                ;;
            "avi")
                echo "You selected AVI format."
                # Add code to handle AVI format here
                ;;
            "mkv")
                echo "You selected MKV format."
                # Add code to handle MKV format here
                ;;
            "mov")
                echo "You selected MOV format."
                # Add code to handle MOV format here
                ;;
            "wmv")
                echo "You selected WMV format."
                # Add code to handle WMV format here
                ;;
            "flv")
                echo "You selected FLV format."
                # Add code to handle FLV format here
                ;;
            "webm")
                echo "You selected WebM format."
                # Add code to handle WebM format here
                ;;
            "3gp")
                echo "You selected 3GP format."
                # Add code to handle 3GP format here
                ;;
            "mpg")
                echo "You selected MPG format."
                # Add code to handle MPG format here
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
                echo "You selected MP3 format."
                # Add code to handle MP3 format here
                ;;
            "wav")
                echo "You selected WAV format."
                # Add code to handle WAV format here
                ;;
            "aac")
                echo "You selected AAC format."
                # Add code to handle AAC format here
                ;;
            "flac")
                echo "You selected FLAC format."
                # Add code to handle FLAC format here
                ;;
            "ogg")
                echo "You selected OGG format."
                # Add code to handle OGG format here
                ;;
            "wma")
                echo "You selected WMA format."
                # Add code to handle WMA format here
                ;;
            "m4a")
                echo "You selected M4A format."
                # Add code to handle M4A format here
                ;;
            "opus")
                echo "You selected Opus format."
                # Add code to handle Opus format here
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
                echo "You selected JPG format."
                # Add code to handle JPG format here
                ;;
            "jpeg")
                echo "You selected JPEG format."
                # Add code to handle JPEG format here
                ;;
            "png")
                echo "You selected PNG format."
                # Add code to handle PNG format here
                ;;
            "gif")
                echo "You selected GIF format."
                # Add code to handle GIF format here
                ;;
            "bmp")
                echo "You selected BMP format."
                # Add code to handle BMP format here
                ;;
            "tiff")
                echo "You selected TIFF format."
                # Add code to handle TIFF format here
                ;;
            "svg")
                echo "You selected SVG format."
                # Add code to handle SVG format here
                ;;
            *)
                echo "Invalid option. Please select a valid image format."
                ;;
        esac
    done
fi


if [ -d "$1" ]; then
    echo "dir"
elif [ -f "$1" ]; then
    echo "file"
else
    echo "error reading file"
    exit 1
fi