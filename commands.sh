#!/bin/bash

# ==========================================
# Lab 04 - Controlled Administrative Privileges
# ==========================================

# Display users in the sudo group
cat /etc/group | grep sudo

# For RPM-based systems
cat /etc/group | grep wheel

# Open sudoers file safely
sudo visudo

# Remove a user from the sudo group
sudo deluser <username> sudo

# Remove a user from the wheel group
sudo gpasswd -d <username> wheel

# Delete an unnecessary user account
sudo userdel <username>

# Verify sudo group membership
cat /etc/group | grep sudo

# Verify wheel group membership
cat /etc/group | grep wheel

# Display user groups
groups <username>

# Check authentication logs
sudo tail /var/log/auth.log

# Display current logged-in users
who

# Display current user identity
id

# Display all users
cut -d: -f1 /etc/passwd