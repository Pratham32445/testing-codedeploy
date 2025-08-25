#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

echo "Installing dependencies..."
npm install --production

echo "Building project..."
npm run build
