#!/bin/bash

# ==========================================
# Lab 16 - Account Monitoring & Control
# ==========================================

# Display All User Accounts
cat /etc/passwd

# List Usernames Only
cut -d: -f1 /etc/passwd

# List Service Accounts (UID < 1000)
awk -F: '$3 < 1000 {print $1}' /etc/passwd

# List Human Users (UID >= 1000)
awk -F: '$3 >= 1000 {print $1}' /etc/passwd

# Display Last Login Information
lastlog

# Display Current Logged-in Users
who

# Display User IDs
id

# Lock a User Account
sudo usermod -L username

# Unlock a User Account
sudo usermod -U username

# Delete a User Account
sudo userdel username

# Delete User and Home Directory
sudo userdel -r username

# Verify Account Status
sudo passwd -S username

# Configure Session Timeout (300 Seconds)
echo "export TMOUT=300" | sudo tee -a /etc/profile

# Apply Changes
source /etc/profile

# Verify TMOUT
echo $TMOUT

# Backup PAM Configuration
sudo cp /etc/pam.d/common-auth /etc/pam.d/common-auth.bak

# Edit PAM Configuration
sudo nano /etc/pam.d/common-auth

# Example PAM Lockout Rule
# auth required pam_tally2.so deny=5 unlock_time=600 onerr=fail audit even_deny_root

# Display Failed Login Attempts (Older Systems)
sudo pam_tally2

# Display Failed Login Attempts (Ubuntu 24.04)
sudo faillock

# Verify Existing Users
getent passwd

# Display Groups
getent group

# Display Running Sessions
w

# Check Authentication Logs
sudo journalctl -u ssh --no-pager

# Or
sudo tail -50 /var/log/auth.log 2>/dev/null