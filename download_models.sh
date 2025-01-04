#!/bin/bash

# Create a single directory for all pretrained models
mkdir -p ./Pretrained-models

# Download individual folders into the Pretrained-models directory
gdown --fuzzy --folder "https://drive.google.com/drive/folders/1AK62M5S9i09gpRSga4gSv5UUAY2nJ6H4" -O ./Pretrained-models
gdown --fuzzy --folder "https://drive.google.com/drive/folders/1MuWZ_Cd6kGCtjVB6g7dUFzRSqvryILqU" -O ./Pretrained-models
gdown --fuzzy --folder "https://drive.google.com/drive/folders/17yfzOsFh0QTc7VfbvHXNt6czWNWdwJM0" -O ./Pretrained-models
gdown --fuzzy --folder "https://drive.google.com/drive/folders/1CVGXslFlfwo0eqe4w3ALFNY5X23v4Ipl" -O ./Pretrained-models
gdown --fuzzy --folder "https://drive.google.com/drive/folders/1S89SlQ4cxYO_TAjcaJxHNAcnDyL3l_wS" -O ./Pretrained-models
gdown --fuzzy --folder "https://drive.google.com/drive/folders/1LLiZwqogofKkWtzqBILAwWEZybnSMgJc" -O ./Pretrained-models

# Notify the user upon successful completion
echo "All models downloaded and saved in ./Pretrained-models"
