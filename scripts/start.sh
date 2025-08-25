#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

# Stop existing PM2 process if running
pm2 delete testing-codedeploy || true

# Start the built app with PM2
pm2 start dist/index.js --name "testing-codedeploy"
pm2 save
