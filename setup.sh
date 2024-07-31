#!/bin/bash

# Script di installazione per il progetto

# Aggiorna i pacchetti e installa Node.js
echo "Aggiornamento pacchetti, in attesa di autorizzazione..."
sudo apt-get update -y

echo "Installazione di Node.js..."
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

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
