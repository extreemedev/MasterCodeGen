#!/bin/bash


# Script di rimozione pacchetti per il progetto
echo "Rimozione pacchetti, in attesa di autorizzazione..."
sudo apt remove libnss3 -y
sudo apt remove libdbus-1-3 -y
sudo apt remove libatk1.0-0 -y
sudo apt remove libcups2 -y
sudo apt remove libxss1 libatk-bridge2.0-0 libgtk-3-0 -y
sudo apt remove libdrm2 -y
sudo apt remove libgbm1 -y
sudo apt remove libasound2 -y
sudo apt remove libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev -y


unset NVM_DIR

# Rimuove Node.js
echo "Rimozione di Node.js..."
rm -rf ~/.nvm

# Rimuove le dipendenze del progetto
echo "Rimozione delle dipendenze del progetto..."
rm -rf node_modules

echo "Rimozione completata!"

