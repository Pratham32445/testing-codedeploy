#!/bin/bash
set -e

echo "Starting application with PM2..."

cd /home/ubuntu/app

# Start with PM2
pm2 start npm --name "myapp" -- run start

# Save PM2 config
pm2 save
