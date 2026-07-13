#!/bin/bash

# ==========================================
# Lab 05 - Secure Configuration for Endpoints
# ==========================================

# Update System
sudo apt update && sudo apt upgrade -y

# Install Lynis
sudo apt install lynis -y

# Run Security Audit
sudo lynis audit system

# View Running Services
sudo systemctl list-units --type=service

# Disable an Unnecessary Service (Example)
sudo systemctl disable bluetooth.service
sudo systemctl stop bluetooth.service

# Check SSH Configuration
sudo nano /etc/ssh/sshd_config

# Recommended SSH Hardening
# PermitRootLogin no

# Restart SSH Service
sudo systemctl restart ssh

# Configure Password Policy
sudo nano /etc/security/pwquality.conf

# Recommended Password Settings
# minlen=12
# dcredit=-1
# ucredit=-1
# lcredit=-1
# ocredit=-1

# Verify Password Policy
cat /etc/security/pwquality.conf

# Verify SSH Configuration
grep PermitRootLogin /etc/ssh/sshd_config

# Check Service Status
sudo systemctl status ssh

# Display Enabled Services
systemctl list-unit-files --state=enabled

# Display Running Services
systemctl --type=service --state=running