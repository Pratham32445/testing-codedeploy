#!/bin/bash
set -e

cd /home/ubuntu/testing-codedeploy

export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

pm2 start dist/index.js --name testing-codedeploy
pm2 save
