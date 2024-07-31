#!/bin/bash

# Script di installazione per il progetto

# Aggiorna i pacchetti e installa Node.js
echo "Aggiornamento pacchetti, in attesa di autorizzazione..."
sudo apt-get update -y
sudo apt install libnss3 -y
sudo apt-get install libdbus-1-3 -y
sudo apt-get install libatk1.0-0 -y
sudo apt-get install libcups2 -y
sudo apt install libxss1 libatk-bridge2.0-0 libgtk-3-0 -y
sudo apt-get install libdrm2 -y
sudo apt-get install libgbm1 -y
sudo apt-get install libasound2 -y
sudo apt install libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev -y


echo "Installazione di Node.js..."
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# download and install Node.js (you may need to restart the terminal)
nvm install 20

# verifies the right Node.js version is in the environment
echo "Verifica versione di Node.js..."
node -v # should print `v20.16.0`

# verifies the right npm version is in the environment
echo "Verifica versione di npm..."
npm -v # should print `10.8.1`

# Installa le dipendenze del progetto
echo "Installazione delle dipendenze del progetto..."

echo "Installazione di Electron..."
npm install electron -D

echo "Installazione di Bootstrap v5.3.3..."
npm install bootstrap@5.3.3

echo "Installazione completata!"
