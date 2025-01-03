#!/bin/bash

# Create directory for pretrained models
mkdir -p ./Pretrained-models

# Download entire folder (files retain original names)
gdown "https://drive.google.com/drive/folders/1AK62M5S9i09gpRSga4gSv5UUAY2nJ6H4?usp=drive_link"
gdown "https://drive.google.com/drive/folders/1MuWZ_Cd6kGCtjVB6g7dUFzRSqvryILqU?usp=drive_link"
gdown "https://drive.google.com/drive/folders/17yfzOsFh0QTc7VfbvHXNt6czWNWdwJM0?usp=drive_link"
gdown "https://drive.google.com/drive/folders/1CVGXslFlfwo0eqe4w3ALFNY5X23v4Ipl?usp=drive_link"
gdown "https://drive.google.com/drive/folders/1S89SlQ4cxYO_TAjcaJxHNAcnDyL3l_wS?usp=drive_link"
gdown "https://drive.google.com/drive/folders/1LLiZwqogofKkWtzqBILAwWEZybnSMgJc?usp=drive_link"
gdown "https://drive.google.com/uc?export=download&id=1uUU6iZ8CdgsCk3JAG6V7BhJXnfWpaQ7a"  # Individual file download

# Unzip downloaded folders into the pretrained models directory
for f in ./models/*.zip; do
    unzip -q $f -d ./Pretrained-models
done

echo "All models downloaded and unzipped to ./Pretrained-models"
