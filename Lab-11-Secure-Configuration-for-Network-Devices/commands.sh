#!/bin/bash

# ==========================================
# Lab 11 - Secure Configuration for
# Network Devices
# ==========================================

# Display Local Network Information
ip addr

# Display Default Gateway
ip route

# Test Connectivity
ping -c 4 192.168.1.1

# SSH Access to Network Device
ssh admin@192.168.1.1

# ==========================================
# Cisco IOS Commands
# ==========================================

# Enter Privileged Mode
enable

# Enter Global Configuration
configure terminal

# Configure SSH Version
ip ssh version 2

# Configure VTY Lines
line vty 0 4
transport input ssh
login local
exit

# Create New Administrator
username admin privilege 15 secret StrongPassword123!

# Disable HTTP
no ip http server

# Enable HTTPS
ip http secure-server

# Save Configuration
copy running-config startup-config

# View Running Configuration
show running-config

# Display SSH Status
show ip ssh

# Display Active Users
show users

# Display Interfaces
show ip interface brief

# Verify Running Services
show running-config | include http
show running-config | include ssh

# Logout
exit