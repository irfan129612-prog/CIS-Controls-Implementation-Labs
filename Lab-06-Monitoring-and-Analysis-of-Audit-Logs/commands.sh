#!/bin/bash

# ==========================================
# Lab 06 - Monitoring & Analysis of Audit Logs
# ==========================================

# Update System
sudo apt update

# Install rsyslog (if not already installed)
sudo apt install rsyslog -y

# Open rsyslog configuration
sudo nano /etc/rsyslog.conf

# Restart Logging Service
sudo systemctl restart rsyslog

# Verify rsyslog Service
sudo systemctl status rsyslog

# Create Directory for Log Collection
mkdir -p ~/log_analysis

# Copy Authentication Log
cp /var/log/auth.log ~/log_analysis/

# Navigate to Log Directory
cd ~/log_analysis

# Display Authentication Log
cat auth.log

# View Log with Pager
less auth.log

# Search Failed Login Attempts
grep "Failed" auth.log

# Search Invalid Users
grep "Invalid user" auth.log

# Search Successful Logins
grep "Accepted" auth.log

# Search Authentication Failures
grep "authentication failure" auth.log

# Search Sudo Activity
grep "sudo" auth.log

# View Last 50 Log Entries
tail -50 auth.log

# Monitor Authentication Log in Real Time
tail -f /var/log/auth.log