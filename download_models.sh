#!/bin/bash

# Create a single directory for all the folders
mkdir -p ./Pretrained-models

# Declare an associative array of Google Drive folder links
declare -A drive_folder_links=(
    ["Obama1"]="https://drive.google.com/drive/folders/1S89SlQ4cxYO_TAjcaJxHNAcnDyL3l_wS"
    ["Obama2"]="https://drive.google.com/drive/folders/1LLiZwqogofKkWtzqBILAwWEZybnSMgJc"
    ["Nadella"]="https://drive.google.com/drive/folders/1CVGXslFlfwo0eqe4w3ALFNY5X23v4Ipl"
    ["McStay"]="https://drive.google.com/drive/folders/17yfzOsFh0QTc7VfbvHXNt6czWNWdwJM0"
    ["May"]="https://drive.google.com/drive/folders/1MuWZ_Cd6kGCtjVB6g7dUFzRSqvryILqU"
    ["Input"]="https://drive.google.com/drive/folders/1AK62M5S9i09gpRSga4gSv5UUAY2nJ6H4"
)

# Loop through each folder link and download its contents
for key in "${!drive_folder_links[@]}"; do
    drive_folder_link="${drive_folder_links[$key]}"
    echo "Downloading folder ($key): $drive_folder_link"
    gdown --fuzzy --folder "$drive_folder_link" -O ./Pretrained-models
done
