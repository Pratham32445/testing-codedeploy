#!/bin/bash
set -e

pm2 stop testing-codedeploy || true
pm2 delete testing-codedeploy || true
