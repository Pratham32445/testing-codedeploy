#!/bin/bash
set -e

# Stop old app if running
pm2 delete testing-codedeploy || true

# Clean old code
rm -rf /home/ubuntu/testing-codedeploy/*
