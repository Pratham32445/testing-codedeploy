#!/bin/bash
set -e

echo "Validating application..."

# Check if app is running on port 3000
curl -f http://localhost:3000 || exit 1

echo "Validation successful!"
