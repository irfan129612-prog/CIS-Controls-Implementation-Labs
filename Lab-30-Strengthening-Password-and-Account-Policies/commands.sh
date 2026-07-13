#!/bin/bash

# ==========================================
# Lab 30: Strengthening Password & Account Policies
# Commands File
# ==========================================

echo "Starting Password & Account Policy Lab"

echo ""
echo "=========================================="
echo "1. Review Linux Password Policy"
echo "=========================================="


# Display current password aging information
# Replace username with actual user

sudo chage -l username


echo ""
echo "Check PAM password configuration"

cat /etc/pam.d/common-password


echo ""
echo "=========================================="
echo "2. Configure Password Complexity"
echo "=========================================="


# Backup pwquality configuration

sudo cp /etc/security/pwquality.conf /etc/security/pwquality.conf.backup


echo "Backup created"


echo ""
echo "Edit password quality configuration:"

echo "sudo nano /etc/security/pwquality.conf"


echo ""
echo "Recommended settings:"
echo ""
echo "minlen=12"
echo "dcredit=-1"
echo "ucredit=-1"
echo "lcredit=-1"
echo "ocredit=-1"


echo ""
echo "=========================================="
echo "3. Configure Password Expiration"
echo "=========================================="


# Replace username with actual account

echo "Set password expiration policy:"
echo "sudo chage -M 90 -m 7 -W 7 username"


echo ""
echo "View password aging settings:"

sudo chage -l username


echo ""
echo "=========================================="
echo "4. Create Test User"
echo "=========================================="


# Create test user

sudo adduser testuser


echo ""
echo "Set password for test user"

sudo passwd testuser


echo ""
echo "=========================================="
echo "5. Verify User Account Information"
echo "=========================================="


id testuser


echo ""
echo "Check password policy for test user"

sudo chage -l testuser


echo ""
echo "=========================================="
echo "6. Test Password Strength"
echo "=========================================="


echo "Try weak password:"
echo "password123"


echo ""
echo "Expected:"
echo "Password should be rejected according to policy"


echo ""
echo "Try strong password:"
echo "Example:"
echo "SecurePass@2026"


echo ""
echo "=========================================="
echo "7. Windows Password Policy Commands"
echo "=========================================="


echo "Open Local Security Policy:"
echo "Win + R → secpol.msc"


echo ""
echo "Review:"
echo "Account Policies → Password Policy"


echo ""
echo "PowerShell command to view local password policy:"

net accounts


echo ""
echo "=========================================="
echo "8. Windows Account Lockout Settings"
echo "=========================================="


net accounts /lockoutthreshold:5

net accounts /lockoutduration:15

net accounts /lockoutwindow:30


echo ""
echo "=========================================="
echo "9. Audit User Accounts"
echo "=========================================="


# Linux users list

cat /etc/passwd


echo ""
echo "=========================================="
echo "Password Policy Lab Completed"
echo "Verify password complexity and expiration settings"
echo "=========================================="