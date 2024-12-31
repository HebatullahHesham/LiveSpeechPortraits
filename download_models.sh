# Create a directory for downloads
mkdir ./checkpoints

# Install gdown if not installed
pip install gdown

# Download all files from the Google Drive folder
gdown --folder https://drive.google.com/drive/folders/1sHc2xEEGwnb0h2rkUhG9sPmOxvRvPVpJ -O ./checkpoints/

# List the downloaded files
ls -lh ./checkpoints/
