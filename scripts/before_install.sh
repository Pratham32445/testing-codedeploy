#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

# Backup .env before deleting old files
if [ -f ".env" ]; then
  sudo cp .env /home/ubuntu/.env.backup
fi

# Clean old deployment files
sudo rm -rf /home/ubuntu/testing-codedeploy/*
sudo rm -rf /home/ubuntu/testing-codedeploy/.[!.]*

# Restore .env back
if [ -f "/home/ubuntu/.env.backup" ]; then
  sudo cp /home/ubuntu/.env.backup /home/ubuntu/testing-codedeploy/.env
fi
