#!/bin/bash
set -e

echo "Running BeforeInstall step..."

# Stop old app if running
pm2 stop all || true
pm2 delete all || true

# Clean old files
rm -rf /home/ubuntu/testing-codedeploy/*
