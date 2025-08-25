#!/bin/bash
set -e

echo "Running AfterInstall step..."

cd /home/ubuntu/testing-codedeploy

# Install dependencies
npm install --production

# Build if it’s a frontend
if [ -f "package.json" ]; then
  if grep -q "\"build\"" package.json; then
    npm run build
  fi
fi
