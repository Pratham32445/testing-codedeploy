#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

# Stop existing PM2 process if running
pm2 delete testing-app || true

# Start the built app with PM2
pm2 start dist/index.js --name "testing-app"
pm2 save
