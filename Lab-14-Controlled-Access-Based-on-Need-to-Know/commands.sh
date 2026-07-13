#!/bin/bash

# ==========================================
# Lab 14 - Controlled Access Based on
# Need to Know
# ==========================================

# Create Secure Directory
mkdir ~/Finance

# Verify Directory
ls -ld ~/Finance

# List Existing Users
cut -d: -f1 /etc/passwd

# Create Finance Group
sudo groupadd finance_group

# Create Finance User
sudo useradd -m finance_user

# Set Password
sudo passwd finance_user

# Create Unauthorized User
sudo useradd -m demo_user
sudo passwd demo_user

# Add User to Finance Group
sudo usermod -aG finance_group finance_user

# Verify Group Membership
groups finance_user

# Change Directory Group Ownership
sudo chown :finance_group ~/Finance

# Set Secure Permissions
sudo chmod 770 ~/Finance

# Verify Ownership & Permissions
ls -ld ~/Finance

# Switch to Authorized User
su - finance_user

# Access Finance Directory
cd /home/ubuntu/Finance
touch finance_report.txt
echo "Confidential Finance Data" > finance_report.txt
ls -l

# Exit Authorized User
exit

# Switch to Unauthorized User
su - demo_user

# Attempt Unauthorized Access
cd /home/ubuntu/Finance
ls

# Expected Output:
# Permission denied

# Exit Demo User
exit

# Verify Final Permissions
ls -ld ~/Finance
getfacl ~/Finance 2>/dev/null
```