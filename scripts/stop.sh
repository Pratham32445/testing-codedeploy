#!/bin/bash
set -e

echo "Stopping application..."

pm2 stop myapp || true
pm2 delete myapp || true
