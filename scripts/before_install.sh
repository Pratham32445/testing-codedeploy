#!/bin/bash
set -e

echo "Running BeforeInstall step..."

# Make sure env backup dir exists
mkdir -p /home/ubuntu/env_backup

# Backup .env if it exists
if [ -f /home/ubuntu/testing-codedeploy/.env ]; then
  cp /home/ubuntu/testing-codedeploy/.env /home/ubuntu/env_backup/.env
  echo ".env file backed up"
fi

# Stop old app if running
pm2 stop all || true
pm2 delete all || true

# Clean old files
rm -rf /home/ubuntu/testing-codedeploy/*

# Restore .env
if [ -f /home/ubuntu/env_backup/.env ]; then
  cp /home/ubuntu/env_backup/.env /home/ubuntu/testing-codedeploy/.env
  echo ".env file restored"
fi
