#!/bin/bash
set -e

echo "Stopping app with PM2..."
pm2 delete testing-codedeploy || true