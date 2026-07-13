# Lab 26: Endpoint Security Tool Introduction

## Lab Overview

Endpoint security is a cybersecurity approach focused on protecting user devices such as laptops, desktops, and servers from malware, unauthorized access, and other security threats.

In this lab, we explore endpoint security solutions by installing and configuring Microsoft Defender or Wazuh, setting up security monitoring, generating test alerts, and verifying endpoint protection capabilities.

This lab provides practical experience with endpoint detection, alert generation, and security monitoring workflows used by SOC analysts.

---

## Objectives

By completing this lab, you will learn:

- Understand the fundamentals of endpoint security.
- Install and configure an endpoint security solution.
- Use Wazuh as an open-source endpoint security platform.
- Configure centralized security reporting.
- Generate security alerts using safe testing methods.
- Verify endpoint detection capabilities.

---

## Prerequisites

Required:

- Computer with supported operating system.
- Administrative privileges.
- Internet connection.
- Basic knowledge of:
  - Computer networks.
  - Cybersecurity concepts.
  - Security monitoring.

Supported Tools:

- Microsoft Defender
- Wazuh Endpoint Security Platform

---

# Lab Environment

Operating Systems:

- Windows
- Linux Ubuntu

Security Tools:

- Microsoft Defender
- Wazuh Manager
- Wazuh Dashboard
- EICAR Test File

---

# Task 1: Install Endpoint Security Solution

## Option 1: Microsoft Defender

Microsoft Defender is built into Windows operating systems.

Steps:

1. Open Windows Settings.
2. Navigate to:

Windows Security

3. Enable:

- Virus & Threat Protection.
- Real-Time Protection.
- Security Notifications.

Verify that Defender is active.

---

# Option 2: Install Wazuh

Wazuh is an open-source security monitoring and endpoint detection platform.

---

## Update System Packages

Open Linux terminal:

Run:

sudo apt-get update


---

## Install Wazuh Repository

Download setup script:

curl -sO https://packages.wazuh.com/4.x/apt/setup_repo.sh


Run setup script:

sudo bash setup_repo.sh


---

## Install Wazuh Manager

Install package:

sudo apt-get install wazuh-manager


---

## Verify Wazuh Service

Check service status:

sudo systemctl status wazuh-manager


A running service confirms successful installation.

---

# Task 2: Configure Dashboard Reporting

## Wazuh Dashboard

The Wazuh Dashboard provides centralized visibility of:

- Security alerts.
- Endpoint events.
- Malware detection.
- System monitoring data.

Access dashboard:

https://<WAZUH_SERVER_IP>/app/wazuh


Verify:

- Dashboard loads successfully.
- Endpoint events are visible.
- Security alerts are displayed.

---

# Task 3: Trigger Security Alerts

## Generate Test Alert Using EICAR File

The EICAR test file is a safe industry-standard method for testing antivirus detection.

Create a file:

eicar.com


Add the following test string:

X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*


Save the file.

---

## Verify Detection

Expected behavior:

Microsoft Defender or Wazuh should:

- Detect the test file.
- Generate an alert.
- Log the security event.
- Block or quarantine the file.

Check:

- Security notifications.
- Wazuh Dashboard.
- Endpoint event logs.

---

# Endpoint Security Workflow

The endpoint protection process:

1. Install security agent.
2. Monitor endpoint activity.
3. Detect suspicious behavior.
4. Generate alerts.
5. Investigate events.
6. Respond to security incidents.

---

# Key Concepts

## Endpoint Security

Protection mechanisms designed to secure:

- Workstations.
- Laptops.
- Servers.
- User devices.

---

## EICAR Test File

A harmless testing file used to verify antivirus and endpoint security detection without using real malware.

---

## Wazuh

An open-source security platform that provides:

- Endpoint monitoring.
- Log analysis.
- Threat detection.
- File integrity monitoring.
- Security alerting.

---

# Security Importance

Endpoint security helps organizations:

- Detect malware infections.
- Monitor user devices.
- Prevent unauthorized access.
- Improve incident response.
- Protect business data.

---

# Lab Outcome

After completing this lab, you should be able to:

- Install endpoint security software.
- Configure security monitoring.
- Access centralized dashboards.
- Generate and analyze alerts.
- Understand endpoint detection workflow.

---

# Conclusion

In this lab, we successfully introduced endpoint security concepts by installing and testing security monitoring solutions.

We configured endpoint protection, generated safe security alerts using the EICAR test file, and verified event reporting through dashboards.

Endpoint security is a fundamental skill for SOC analysts, security engineers, and cybersecurity professionals.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
