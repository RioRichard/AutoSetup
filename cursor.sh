#!/bin/bash

# Set variables
USER=$(whoami)
APP_DIR="/home/$USER/App"
DOWNLOAD_URL="https://download.cursor.sh/linux_deb/appImage/Cursor-latest.AppImage"
CURSOR_APP="$APP_DIR/Cursor.AppImage"
DESKTOP_FILE="/home/$USER/.local/share/applications/cursor.desktop"

# Create App directory if it doesn't exist
mkdir -p "$APP_DIR"

# Download the latest Cursor AppImage
echo "Downloading the latest version of Cursor..."
wget -O "$CURSOR_APP" "$DOWNLOAD_URL"

# Make the AppImage executable
chmod a+x "$CURSOR_APP"

# Create a desktop shortcut
echo "Creating desktop shortcut..."
cat > "$DESKTOP_FILE" << EOL
[Desktop Entry]
Name=Cursor
Exec=$CURSOR_APP
Icon=$APP_DIR/cursor_icon.png
Type=Application
Categories=Development;
EOL

# Download an icon for Cursor (you may want to replace this URL with an official icon if available)
wget -O "$APP_DIR/cursor_icon.png" "https://raw.githubusercontent.com/getcursor/cursor/main/packages/renderer/src/assets/cursor-256.png"

echo "Cursor has been installed successfully!"
echo "You can now launch it from your applications menu or by running '$CURSOR_APP'"
