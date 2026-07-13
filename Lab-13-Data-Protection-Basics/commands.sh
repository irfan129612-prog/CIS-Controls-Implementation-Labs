#!/bin/bash

# ==========================================
# Lab 13 - Data Protection Basics
# ==========================================

# Update System
sudo apt update

# Install OpenSSH Server
sudo apt install openssh-server -y

# Enable SSH
sudo systemctl enable ssh
sudo systemctl start ssh

# Verify SSH Status
sudo systemctl status ssh

# Generate Self-Signed SSL Certificate
openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-keyout server.key \
-out server.crt

# Display Certificate Information
openssl x509 -in server.crt -text -noout

# Encrypt a File Using OpenSSL (AES-256)
openssl enc -aes-256-cbc -salt \
-in testfile.txt \
-out testfile.txt.enc

# Decrypt the File
openssl enc -aes-256-cbc -d \
-in testfile.txt.enc \
-out decrypted_testfile.txt

# Verify File Integrity
diff testfile.txt decrypted_testfile.txt

# Disable Telnet (if installed)
sudo systemctl stop telnet 2>/dev/null
sudo systemctl disable telnet 2>/dev/null

# Verify SSH is Listening
sudo ss -tulpn | grep ssh

# Verify HTTPS Port
sudo ss -tulpn | grep 443

# Display Active Certificates
ls -lh server.crt server.key

# Check SSH Version
ssh -V

# Test Local HTTPS (if Apache/Nginx configured)
curl -k https://localhost