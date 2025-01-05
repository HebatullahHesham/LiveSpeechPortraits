#!/bin/bash

# Create a single directory for the folder
mkdir -p ./Pretrained-models

# Google Drive folder link
drive_folder_link="https://drive.google.com/drive/folders/1sHc2xEEGwnb0h2rkUhG9sPmOxvRvPVpJ"

# Download the folder and its contents
gdown --fuzzy --folder "$drive_folder_link" -O ./Pretrained-models
