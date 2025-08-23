#!/bin/bash
set -e

pm2 describe testing-codedeploy > /dev/null

# Optional health check
curl -f http://localhost:3000/health || exit 1
