#!/bin/bash

# Create a directory for checkpoints
mkdir -p ./checkpoints

# Install rclone if not installed
sudo apt-get install -y rclone

# Configure rclone manually (or do this step earlier)
# rclone config

# Copy files from Google Drive folder
rclone copy gdrive:1sHc2xEEGwnb0h2rkUhG9sPmOxvRvPVpJ ./checkpoints/ --progress

# List downloaded files
ls -lh ./checkpoints/
