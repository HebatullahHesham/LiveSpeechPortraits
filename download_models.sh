#!/bin/bash

# Create a single directory for all the folders
mkdir -p ./Pretrained-models

# List of Google Drive folder links
drive_folder_links=(
    "https://drive.google.com/drive/folders/1sHc2xEEGwnb0h2rkUhG9sPmOxvRvPVpJ"
    "https://drive.google.com/drive/folders/1S89SlQ4cxYO_TAjcaJxHNAcnDyL3l_wS?usp"
    "https://drive.google.com/drive/folders/1CVGXslFlfwo0eqe4w3ALFNY5X23v4Ipl?usp"
    "https://drive.google.com/drive/folders/17yfzOsFh0QTc7VfbvHXNt6czWNWdwJM0?usp"
    "https://drive.google.com/drive/folders/1MuWZ_Cd6kGCtjVB6g7dUFzRSqvryILqU?usp"
    "https://drive.google.com/drive/folders/1LLiZwqogofKkWtzqBILAwWEZybnSMgJc?usp"
    "https://drive.google.com/drive/folders/1MuWZ_Cd6kGCtjVB6g7dUFzRSqvryILqU?usp"
    "https://drive.google.com/drive/folders/1AK62M5S9i09gpRSga4gSv5UUAY2nJ6H4?usp"
    "https://drive.google.com/file/d/1uUU6iZ8CdgsCk3JAG6V7BhJXnfWpaQ7a"
)

# Loop through each folder link and download its contents
for drive_folder_link in "${drive_folder_links[@]}"; do
    echo "Downloading folder: $drive_folder_link"
    gdown --fuzzy --folder "$drive_folder_link" -O ./Pretrained-models
done
