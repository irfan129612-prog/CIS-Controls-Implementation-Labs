#!/bin/bash

# ==========================================
# Lab 19 - Incident Response & Management
# ==========================================

# Update system
sudo apt update
sudo apt upgrade -y

# Install Suricata
sudo apt install suricata -y

# Verify installation
suricata --build-info

# Start Suricata service
sudo systemctl enable suricata
sudo systemctl start suricata

# Check service status
sudo systemctl status suricata

# Monitor live traffic
sudo suricata -c /etc/suricata/suricata.yaml -i eth0

# Block malicious IP
sudo iptables -A INPUT -s <malicious-IP> -j DROP

# Install ClamAV
sudo apt install clamav clamav-daemon -y

# Update malware signatures
sudo freshclam

# Scan entire system
sudo clamscan --recursive /

# Scan and remove malware
sudo clamscan --remove --recursive /

# Update operating system after cleanup
sudo apt update
sudo apt upgrade -y

# Check firewall rules
sudo iptables -L

# View Suricata logs
sudo tail -f /var/log/suricata/fast.log

# View ClamAV logs
sudo tail -f /var/log/clamav/clamav.log