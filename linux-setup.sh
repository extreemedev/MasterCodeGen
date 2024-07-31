#!/bin/bash

# Script to install packages for the project

# Update packages and install Node.js
echo "Aggiornamento pacchetti, in attesa di autorizzazione..."
sudo apt-get update -y
sudo apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev -y

# Install the unnecessary packages for the project
: '
sudo apt install libnss3 -y
sudo apt-get install libdbus-1-3 -y
sudo apt-get install libatk1.0-0 -y
sudo apt-get install libcups2 -y
sudo apt install libxss1 libatk-bridge2.0-0 libgtk-3-0 -y
sudo apt-get install libdrm2 -y
sudo apt-get install libgbm1 -y
sudo apt-get install libasound2 -y
sudo apt install libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev -y
'

# Installs nvm (Node Version Manager)
echo "Installazione di Node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Download and install Node.js (you may need to restart the terminal)
nvm install 20

# Verifies the right Node.js version is in the environment
echo "Verifying Node.js version..."
node -v # should print `v20.16.0`

# Verifies the right npm version is in the environment
echo "Verifying npm version..."
npm -v # should print `10.8.1`

# Install project dependencies
echo "Installing project dependencies..."

# Install Electron
echo "Installing Electron..."
npm install electron -D

# Install Bootstrap v5.3.3
echo "Installing Bootstrap v5.3.3..."
npm install bootstrap@5.3.3

echo "Installation completed!"
