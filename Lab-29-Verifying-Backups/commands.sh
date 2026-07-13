#!/bin/bash

# ==========================================
# Lab 29: Verifying Backups
# Commands File
# ==========================================

echo "Starting Backup Verification Lab"

echo ""
echo "=========================================="
echo "1. Create Restore Directory"
echo "=========================================="


# Create directory for restored files

sudo mkdir -p /restored_backup_directory/


echo ""
echo "=========================================="
echo "2. Restore Backup Archive"
echo "=========================================="


# Restore tar.gz backup file
# Replace backup.tar.gz with your backup file name

tar -xzvf backup.tar.gz -C /restored_backup_directory/


echo ""
echo "Backup extraction completed"


echo ""
echo "=========================================="
echo "3. Verify Restored Files"
echo "=========================================="


ls -l /restored_backup_directory/


echo ""
echo "=========================================="
echo "4. Compare Original and Restored Files"
echo "=========================================="


# Recursive comparison

diff -r /original_directory/ /restored_backup_directory/


echo ""
echo "No output means files are identical"


echo ""
echo "=========================================="
echo "5. Verify File Integrity Using SHA256"
echo "=========================================="


# Compare file hashes
# Replace file paths according to your environment

sha256sum /original_directory/file1.txt /restored_backup_directory/file1.txt


echo ""
echo "Matching hashes confirm file integrity"


echo ""
echo "=========================================="
echo "6. Check Backup Archive Information"
echo "=========================================="


# List files inside backup without extracting

tar -tzvf backup.tar.gz


echo ""
echo "=========================================="
echo "7. Check File Permissions"
echo "=========================================="


ls -lah /restored_backup_directory/


echo ""
echo "=========================================="
echo "8. Fix Ownership (If Required)"
echo "=========================================="


# Replace user with correct username

echo "Command:"
echo "sudo chown -R user:user /restored_backup_directory/"


echo ""
echo "=========================================="
echo "9. Backup Verification Logs"
echo "=========================================="


# Save comparison results

diff -r /original_directory/ /restored_backup_directory/ > backup_verification.log


echo "Verification results saved to backup_verification.log"


echo ""
echo "=========================================="
echo "Backup Verification Lab Completed"
echo "Restore, comparison and integrity checks completed"
echo "=========================================="