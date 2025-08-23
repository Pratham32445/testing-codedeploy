#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

# Load NVM
export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install dependencies
npm install
npm install --save-dev typescript

# Build app
npm run build
