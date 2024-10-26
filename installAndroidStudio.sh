#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for required commands
for cmd in wget unzip jq; do
    if ! command_exists "$cmd"; then
        echo "Error: $cmd is not installed. Please install it and try again."
        exit 1
    fi
done

# Create App directory in user's home folder
INSTALL_DIR="$HOME/App/android-studio"
mkdir -p "$INSTALL_DIR"

# Fetch the latest version and download URL
echo "Fetching the latest Android Studio version..."
LATEST_URL=$(wget -qO- https://developer.android.com/studio/index.html | grep -oP 'https://redirector.gvt1.com/edgedl/android/studio/ide-zips/[^"]+linux.tar.gz' | head -1)

if [ -z "$LATEST_URL" ]; then
    echo "Error: Unable to fetch the latest Android Studio download URL."
    exit 1
fi

# Extract version number from the URL
VERSION=$(echo $LATEST_URL | grep -oP '\d+\.\d+\.\d+\.\d+')

echo "Latest Android Studio version: $VERSION"

# Download the latest Android Studio
echo "Downloading Android Studio $VERSION..."
wget -O android-studio.tar.gz "$LATEST_URL"

# Extract the downloaded file
echo "Extracting Android Studio..."
tar -xzf android-studio.tar.gz -C "$INSTALL_DIR"

# Remove the tar.gz file
rm android-studio.tar.gz

# Set up environment variables
echo "Setting up environment variables..."
echo "export ANDROID_STUDIO_HOME=\"$INSTALL_DIR/android-studio\"" >> "$HOME/.bashrc"
echo 'export PATH="$ANDROID_STUDIO_HOME/bin:$PATH"' >> "$HOME/.bashrc"

# Source the updated .bashrc
source "$HOME/.bashrc"

echo "Android Studio $VERSION has been installed successfully!"
echo "You can now run it by typing 'studio.sh' in the terminal."
echo "Please restart your terminal or run 'source ~/.bashrc' to apply the changes."
