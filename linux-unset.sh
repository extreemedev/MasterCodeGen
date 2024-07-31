#!/bin/bash

# Script to remove packages for the project
echo "Removing packages, waiting for authorization..."
sudo apt remove libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev -y

# Remove the unnecessary packages for the project
:'
sudo apt remove libnss3 -y
sudo apt remove libdbus-1-3 -y
sudo apt remove libatk1.0-0 -y
sudo apt remove libcups2 -y
sudo apt remove libxss1 libatk-bridge2.0-0 libgtk-3-0 -y
sudo apt remove libdrm2 -y
sudo apt remove libgbm1 -y
sudo apt remove libasound2 -y
sudo apt remove libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev -y
'
# Uninstall nvm (Node Version Manager)
unset NVM_DIR

# Remove Node.js
echo "Removing Node.js..."
rm -rf ~/.nvm

# Remove project dependencies
echo "Removing project dependencies..."
rm -rf node_modules

echo "Removal completed!"


