#!/bin/sh
set -e

echo "Bootstrapping Gitea stack..."

# Create state directories
mkdir -p /state/data
mkdir -p /state/config
mkdir -p /state/db

# Set permissions for rootless gitea (UID 1000)
chown -R 1000:1000 /state/data
chown -R 1000:1000 /state/config

# Set permissions for postgres (UID 70 in alpine postgres image)
chown -R 70:70 /state/db

echo "State directories created:"
ls -la /state/

echo "Bootstrap complete!"
