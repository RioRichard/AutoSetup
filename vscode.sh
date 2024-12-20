#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo RUNNING SETUP VSCODE =============================
sudo apt-get update
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code  # Changed from 'apt' to 'apt-get' for consistency
if ! command -v code &> /dev/null; then
    echo "Error: VSCode installation failed"
    exit 1
fi
echo ENDING SETUP VSCODE =============================
