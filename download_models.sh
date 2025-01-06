#!/bin/bash

# Enable debug mode for detailed logging
set -x

# Create a single directory for all the folders
mkdir -p ./Pretrained-models

# Check if gdown is installed and display its version
if ! command -v gdown &> /dev/null; then
    echo "gdown is not installed. Installing..."
    pip install --upgrade gdown
fi
gdown --version

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

    # Try downloading the folder with gdown
    gdown --fuzzy --folder "$drive_folder_link" -O "./Pretrained-models/$key"

    # Verify if the folder was downloaded successfully
    if [ $? -ne 0 ]; then
        echo "Error: Failed to download folder ($key). Check the link or permissions."
        exit 1
    else
        echo "Successfully downloaded folder ($key)."
    fi
done

# Disable debug mode
set +x

echo "All folders downloaded successfully into ./Pretrained-models"
