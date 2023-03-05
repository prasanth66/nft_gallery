#!/usr/bin/env bash
set -e
echo "Starting  ui for env dev"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

echo "Starting  ui for env dev"
nvm use && npm install && npm run dev