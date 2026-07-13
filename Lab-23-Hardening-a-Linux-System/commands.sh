#!/bin/bash

# ==========================================
# Lab 23: Hardening a Linux System
# Commands File
# ==========================================

echo "Starting Linux Hardening Lab"

echo ""
echo "=========================================="
echo "1. Identify Installed Packages"
echo "=========================================="


# Ubuntu / Debian
echo "Ubuntu/Debian Installed Packages:"
sudo apt list --installed


# CentOS / RHEL
echo "CentOS/RHEL Installed Packages:"
sudo yum list installed


echo ""
echo "=========================================="
echo "2. Remove Unused Packages"
echo "=========================================="


# Ubuntu / Debian
# Replace package_name with the package you want to remove
# sudo apt remove package_name


# CentOS / RHEL
# Replace package_name with the package you want to remove
# sudo yum remove package_name


echo ""
echo "=========================================="
echo "3. SSH Hardening"
echo "=========================================="


# Backup SSH configuration before changes

sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup


echo "SSH configuration backup created"


# Edit SSH configuration manually
echo "Edit SSH configuration:"
echo "sudo nano /etc/ssh/sshd_config"


echo ""
echo "Disable Root Login:"
echo "PermitRootLogin no"


echo ""
echo "Restart SSH Service"


# Ubuntu / Debian
sudo systemctl restart ssh


# CentOS / RHEL
# sudo systemctl restart sshd


echo ""
echo "=========================================="
echo "4. SSH Key Based Authentication"
echo "=========================================="


# Generate SSH key pair

ssh-keygen -t rsa -b 4096


# Copy SSH key to remote server
# Replace user and remote_server
# ssh-copy-id user@remote_server


echo ""
echo "=========================================="
echo "5. Install Lynis Security Auditor"
echo "=========================================="


# Ubuntu / Debian
sudo apt install lynis -y


# CentOS / RHEL
# sudo yum install lynis -y


echo ""
echo "=========================================="
echo "6. Run Lynis Security Audit"
echo "=========================================="


lynis audit system


echo ""
echo "=========================================="
echo "Linux Hardening Lab Completed"
echo "Review Lynis recommendations and CIS Benchmark controls"
echo "=========================================="