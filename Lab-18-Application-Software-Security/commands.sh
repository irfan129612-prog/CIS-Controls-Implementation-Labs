#!/bin/bash

# ==========================================
# Lab 18 - Application Software Security
# ==========================================

# Update packages
sudo apt update

# Install Docker
sudo apt install docker.io -y

# Enable Docker
sudo systemctl enable docker
sudo systemctl start docker

# Verify Docker
docker --version

# Pull DVWA image
docker pull vulnerables/web-dvwa

# Run DVWA
docker run -d --name dvwa -p 80:80 vulnerables/web-dvwa

# Verify running container
docker ps

# Open in browser
# http://localhost

# Install Node.js and npm
sudo apt install nodejs npm -y

# Verify installation
node -v
npm -v

# Install ESLint
sudo npm install -g eslint

# Verify ESLint
eslint -v

# Analyze JavaScript file
eslint vulnerableScript.js

# Stop container
docker stop dvwa

# Remove container
docker rm dvwa

# Remove image (optional)
docker rmi vulnerables/web-dvwa