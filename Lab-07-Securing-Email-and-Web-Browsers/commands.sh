#!/bin/bash

# ==========================================
# Lab 07 - Securing Email & Web Browsers
# ==========================================

# Update System
sudo apt update

# Install Thunderbird
sudo apt install thunderbird -y

# Launch Thunderbird
thunderbird &

# Install Firefox
sudo apt install firefox -y

# Launch Firefox
firefox &

# Firefox Add-ons (Install from Firefox Add-ons Store)
# - uBlock Origin
# - NoScript

# Thunderbird Configuration
# Tools -> Account Settings
# Junk Settings
# Enable Adaptive Junk Mail Controls
# Trust Junk Mail Headers

# Firefox Security Settings
# Settings -> Privacy & Security

# Recommended Settings
# - Enhanced Tracking Protection = Strict
# - Enable HTTPS-Only Mode
# - Enable Block Dangerous and Deceptive Content
# - Enable DNS over HTTPS (Optional)
# - Enable Fingerprinting Protection
# - Enable Cryptomining Protection

# Verify Installed Packages
dpkg -l | grep thunderbird
dpkg -l | grep firefox

# Display Firefox Version
firefox --version

# Display Thunderbird Version
thunderbird --version