#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

# Load NVM (so node and npm are available)
export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo "Using Node version:"
node -v
npm -v

echo "Installing dependencies..."
npm install --production

echo "Building project..."
npm run build
