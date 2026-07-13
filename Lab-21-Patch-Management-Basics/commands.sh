
---

### commands.sh

```bash
#!/bin/bash

# ==========================================
# Lab 21: Patch Management Basics
# Commands File
# ==========================================

echo "Starting Patch Management Commands"

echo ""
echo "===== Ubuntu Linux Update Check ====="

# Update package repository
sudo apt update

# Check available upgrades
apt list --upgradable


echo ""
echo "===== Ubuntu Linux Apply Updates ====="

# Install updates
sudo apt upgrade -y


echo ""
echo "===== Save Ubuntu Update Information ====="

# Create update log
sudo apt list --upgradable >> updates_applied.log


echo ""
echo "===== CentOS / RHEL Update Check ====="

# Check available updates
sudo yum check-update


echo ""
echo "===== CentOS / RHEL Apply Updates ====="

# Install updates
sudo yum update -y


echo ""
echo "===== Save Yum Update Information ====="

# Save update details
sudo yum list updates >> updates_applied.log


echo ""
echo "===== Validate System Logs ====="

# Check kernel errors
dmesg | grep -i error


echo ""
echo "===== Installed Packages ====="

# Ubuntu installed packages
apt list --installed


echo ""
echo "Patch Management Lab Completed"

echo "Review updates_applied.log for documentation"