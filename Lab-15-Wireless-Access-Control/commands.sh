#!/bin/bash

# ==========================================
# Lab 15 - Wireless Access Control
# ==========================================

# Display Local IP Address
ip addr

# Display Default Gateway
ip route

# Test Connectivity to Router
ping -c 4 192.168.1.1

# --------------------------------------------------
# Router Configuration (Performed via Web Interface)
# --------------------------------------------------

# Login URL
# http://192.168.1.1
# or
# http://192.168.0.1

# Configure Wireless Security
# Security Mode:
#   WPA2-PSK (AES)
#   or WPA3-SAE

# Example Strong Passphrase
# S3cur3P@ssw0rd!

# Disable WPS
# Wireless Settings -> WPS -> Disable

# Save Configuration
# Apply Changes and Reboot Router (if required)

# --------------------------------------------------
# Verification Commands
# --------------------------------------------------

# Display Wireless Interfaces
iw dev

# Display Network Interfaces
ip link

# Scan Available Wireless Networks
nmcli device wifi list

# Connect to Wireless Network
nmcli device wifi connect "<SSID>" password "<PASSWORD>"

# Display Active Wireless Connection
nmcli connection show --active

# Verify Connectivity
ping -c 4 google.com

# Verify Default Route
ip route

# DNS Test
nslookup google.com

# Test Unauthorized Access
# Attempt connection with incorrect password
# Expected Result:
# Authentication Failed