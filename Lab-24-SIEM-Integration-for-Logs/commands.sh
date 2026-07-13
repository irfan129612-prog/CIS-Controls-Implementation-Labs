#!/bin/bash

# ==========================================
# Lab 24: SIEM Integration for Logs
# Commands File
# ==========================================

echo "Starting SIEM Integration Lab"

echo ""
echo "=========================================="
echo "1. Download and Install Filebeat"
echo "=========================================="


# Download Filebeat package
# Replace <version> with required Filebeat version

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-<version>-amd64.deb


# Install Filebeat

sudo dpkg -i filebeat-<version>-amd64.deb


echo ""
echo "Filebeat installation completed"


echo ""
echo "=========================================="
echo "2. Configure Filebeat"
echo "=========================================="


# Backup original configuration

sudo cp /etc/filebeat/filebeat.yml /etc/filebeat/filebeat.yml.backup


echo "Filebeat configuration backup created"


# Open configuration file

echo "Edit Filebeat configuration:"
echo "sudo nano /etc/filebeat/filebeat.yml"


echo ""
echo "Configure log input:"
echo ""
echo "filebeat.inputs:"
echo "- type: log"
echo "  enabled: true"
echo "  paths:"
echo "    - /var/log/*.log"


echo ""
echo "Configure Elasticsearch output:"
echo ""
echo "output.elasticsearch:"
echo "  hosts: [\"localhost:9200\"]"
echo "  username: \"elastic\""
echo "  password: \"changeme\""


echo ""
echo "=========================================="
echo "3. Enable and Start Filebeat Service"
echo "=========================================="


# Enable Filebeat at boot

sudo systemctl enable filebeat


# Start Filebeat service

sudo systemctl start filebeat


# Check Filebeat status

sudo systemctl status filebeat


echo ""
echo "=========================================="
echo "4. Test Filebeat Configuration"
echo "=========================================="


sudo filebeat test config


echo ""
echo "Test Elasticsearch connection"

sudo filebeat test output


echo ""
echo "=========================================="
echo "5. Generate Test Logs"
echo "=========================================="


# Generate authentication test message

logger "SIEM Integration Lab Test Event"


# View system logs

tail -f /var/log/syslog


echo ""
echo "=========================================="
echo "6. Check Filebeat Logs"
echo "=========================================="


sudo journalctl -u filebeat -f


echo ""
echo "=========================================="
echo "7. SIEM Verification"
echo "=========================================="


echo "Open Kibana:"
echo "Kibana → Discover"
echo ""
echo "Search for:"
echo "- host.name"
echo "- source.ip"
echo "- event.category"
echo "- message"


echo ""
echo "=========================================="
echo "8. Example Detection Test"
echo "=========================================="


echo "Generate failed login attempts for alert testing"
echo "Example:"
echo "ssh invalid_user@server_ip"


echo ""
echo "=========================================="
echo "SIEM Integration Lab Completed"
echo "Verify logs and alerts inside Kibana Dashboard"
echo "=========================================="