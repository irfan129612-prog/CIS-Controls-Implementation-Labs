#!/bin/bash

# ==========================================
# Lab 09 - Limiting Network Ports, Protocols,
# & Services
# ==========================================

# Update Package List
sudo apt update

# Install net-tools (if netstat is not installed)
sudo apt install net-tools -y

# List Listening TCP/UDP Ports using ss
sudo ss -tuln

# List Listening TCP/UDP Ports using netstat
sudo netstat -tuln

# Display Running Services
sudo systemctl list-units --type=service

# Check UFW Status
sudo ufw status verbose

# Enable UFW (if disabled)
sudo ufw enable

# Block Telnet (TCP Port 23)
sudo ufw deny 23/tcp

# Reload Firewall
sudo ufw reload

# Display Firewall Rules
sudo ufw status numbered

# Verify Listening Ports
sudo ss -tuln

# Alternative: Block Port using iptables
sudo iptables -A INPUT -p tcp --dport 23 -j DROP

# Save iptables Rules
sudo iptables-save > /etc/iptables/rules.v4

# Display Active iptables Rules
sudo iptables -L -n -v

# Check Open Ports Again
sudo netstat -tuln

# Display Listening Processes
sudo ss -tulpn