#!/bin/bash


# Script di rimozione pacchetti per il progetto
echo "Rimozione pacchetti, in attesa di autorizzazione..."
unset NVM_DIR

# Rimuove Node.js
echo "Rimozione di Node.js..."
rm -rf ~/.nvm

# Rimuove le dipendenze del progetto
echo "Rimozione delle dipendenze del progetto..."
rm -rf node_modules

echo "Rimozione completata!"

