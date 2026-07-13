#!/bin/bash

# ==========================================
# Lab 26: Endpoint Security Tool Introduction
# Commands File
# ==========================================

echo "Starting Endpoint Security Lab"

echo ""
echo "=========================================="
echo "1. System Update"
echo "=========================================="

# Update Linux package lists

sudo apt-get update


echo ""
echo "=========================================="
echo "2. Install Wazuh Repository"
echo "=========================================="


# Download Wazuh setup script

curl -sO https://packages.wazuh.com/4.x/apt/setup_repo.sh


# Run Wazuh repository setup

sudo bash setup_repo.sh


echo ""
echo "=========================================="
echo "3. Install Wazuh Manager"
echo "=========================================="


sudo apt-get install wazuh-manager -y


echo ""
echo "=========================================="
echo "4. Verify Wazuh Service"
echo "=========================================="


sudo systemctl status wazuh-manager


echo ""
echo "=========================================="
echo "5. Enable Wazuh at Boot"
echo "=========================================="


sudo systemctl enable wazuh-manager


echo ""
echo "=========================================="
echo "6. Restart Wazuh Manager"
echo "=========================================="


sudo systemctl restart wazuh-manager


echo ""
echo "=========================================="
echo "7. Check Wazuh Logs"
echo "=========================================="


sudo journalctl -u wazuh-manager -f


echo ""
echo "=========================================="
echo "8. Generate Test Security Alert"
echo "=========================================="


# Create EICAR test file
# This is a harmless antivirus testing string

echo 'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*' > eicar.com


echo "EICAR test file created"
echo "Endpoint security solution should generate an alert"


echo ""
echo "=========================================="
echo "9. Check Security Events"
echo "=========================================="


# View Wazuh alerts

sudo tail -f /var/ossec/logs/alerts/alerts.log


echo ""
echo "=========================================="
echo "10. Wazuh Dashboard Access"
echo "=========================================="


echo "Open browser:"
echo "https://<WAZUH_SERVER_IP>/app/wazuh"


echo ""
echo "=========================================="
echo "Endpoint Security Lab Completed"
echo "Verify alerts and events in Wazuh Dashboard"
echo "=========================================="