#!/bin/bash

# ==========================================
# Lab 12 - Boundary Defense
# ==========================================

# Update Package List
sudo apt update

# Install UFW (if not already installed)
sudo apt install ufw -y

# Check Firewall Status
sudo ufw status verbose

# Enable Firewall (if disabled)
sudo ufw enable

# Allow SSH (Prevent Lockout)
sudo ufw allow 22/tcp

# Block TCP Port 8080
sudo ufw deny 8080/tcp

# Reload Firewall Rules
sudo ufw reload

# Display Firewall Rules
sudo ufw status numbered

# Verify Listening Ports
sudo ss -tuln

# Alternative Port Check
sudo netstat -tuln

# Test Blocked Port from Another Host
nc -vz <TARGET_IP> 8080

# Display Active UFW Rules
sudo ufw show added

# Show Network Interfaces
ip addr

# Display Routing Table
ip route

# Test Network Connectivity
ping -c 4 8.8.8.8

# Display Active Connections
ss -tulpn