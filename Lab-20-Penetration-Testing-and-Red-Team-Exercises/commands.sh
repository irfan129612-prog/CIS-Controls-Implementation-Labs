#!/bin/bash

# ==========================================
# Lab 20 - Penetration Testing & Red Team Exercises
# ==========================================

# Update system
sudo apt update
sudo apt upgrade -y

# Install Nmap
sudo apt install nmap -y

# Verify installation
nmap --version

# Basic service version scan
nmap -sV <target-ip>

# Comprehensive scan (optional)
nmap -A <target-ip>

# Install Metasploit Framework (if not installed)
sudo snap install metasploit-framework

# Launch Metasploit
msfconsole

# SMB Version Enumeration
use auxiliary/scanner/smb/smb_version

# Set target
set RHOSTS <target-ip>

# Execute scan
run

# Search available SMB modules
search smb

# Show discovered services
services

# Exit Metasploit
exit

# (Optional) Save Nmap output
nmap -sV <target-ip> -oN nmap_scan_results.txt