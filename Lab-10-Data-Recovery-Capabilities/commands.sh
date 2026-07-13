#!/bin/bash

# ==========================================
# Lab 10 - Data Recovery Capabilities
# ==========================================

# Update System
sudo apt update

# Create Sample Data (Optional)
mkdir -p ~/Documents
echo "Sample File 1" > ~/Documents/file1.txt
echo "Sample File 2" > ~/Documents/file2.txt

# Verify Files
ls -lh ~/Documents

# Manual Backup
tar -czvf DocumentsBackup.tar.gz ~/Documents

# Verify Backup Archive
ls -lh DocumentsBackup.tar.gz

# View Archive Contents
tar -tzvf DocumentsBackup.tar.gz

# Create Restore Directory
mkdir -p ~/RestoredDocuments

# Restore Backup
tar -xzvf DocumentsBackup.tar.gz -C ~/RestoredDocuments

# Verify Restored Files
ls -R ~/RestoredDocuments

# Compare Original and Restored Data
diff -r ~/Documents ~/RestoredDocuments/home/ubuntu/Documents

# Schedule Daily Backup
crontab -e

# Example Cron Entry
# 0 2 * * * tar -czvf /home/ubuntu/DocumentsBackup_$(date +\%F).tar.gz /home/ubuntu/Documents

# View Scheduled Cron Jobs
crontab -l

# Display Backup File Information
file DocumentsBackup.tar.gz

# Calculate Backup Checksum
sha256sum DocumentsBackup.tar.gz