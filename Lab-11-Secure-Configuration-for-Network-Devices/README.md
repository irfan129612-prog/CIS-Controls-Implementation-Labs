# Lab 11 – Secure Configuration for Network Devices

## Overview

This lab demonstrates how to securely configure network devices such as routers and switches by applying security best practices. The lab focuses on accessing the management interface, replacing default credentials, disabling unnecessary services, and documenting the final configuration. Proper device hardening helps reduce unauthorized access and strengthens the overall security of network infrastructure.

---

## Objectives

- Access a network device using Web, SSH, or Console.
- Change default administrative credentials.
- Disable insecure or unnecessary network services.
- Verify secure device configuration.
- Document the final configuration for future audits.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS / Windows |
| Network Device | Router / Switch (Physical or Virtual) |
| Remote Access | SSH |
| Web Management | HTTP / HTTPS |
| Terminal Software | OpenSSH / PuTTY |

---

## Task 1 – Access the Device Management Interface

The network device was accessed using one of the following management methods:

- Web Interface
- SSH
- Console Connection

SSH was configured as the preferred secure remote management protocol.

---

## Task 2 – Secure Administrative Access

The default administrator username and password were replaced with strong credentials.

Security recommendations included:

- Use strong passwords.
- Disable default accounts where possible.
- Limit administrator access.
- Use SSH instead of Telnet.

---

## Task 3 – Disable Unnecessary Services

Network services were reviewed and unnecessary services disabled.

Examples include:

- Disable HTTP Management
- Disable Telnet
- Enable HTTPS
- Enable SSH Version 2

Only required management services remained enabled.

---

## Task 4 – Verify Configuration

The running configuration was reviewed to confirm:

- Secure administrator credentials
- SSH enabled
- HTTP disabled
- Telnet disabled
- Configuration saved successfully

---

## Findings

- Successfully accessed the network device.
- Changed default administrative credentials.
- Enabled secure remote management using SSH.
- Disabled insecure management services.
- Documented the final secure configuration.

---

## Security Benefits

Secure network device configuration helps organizations:

- Prevent unauthorized administrative access.
- Reduce the attack surface.
- Eliminate insecure management protocols.
- Improve network security.
- Support compliance requirements.
- Protect critical network infrastructure.

---



## Learning Outcomes

After completing this lab, I learned how to:

- Access network devices securely.
- Configure SSH remote management.
- Replace default credentials.
- Disable insecure services.
- Review running configurations.
- Harden network infrastructure.
- Document secure configurations.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1021 | Remote Services |
| T1078 | Valid Accounts |
| T1046 | Network Service Discovery |

---

## CIS Control Mapping

**CIS Control 12 – Network Infrastructure Management**

This lab demonstrates secure configuration and hardening of network devices by implementing secure management protocols, removing default credentials, and disabling unnecessary services.

---

## Skills Demonstrated

- Network Administration
- Router Configuration
- Switch Configuration
- SSH Configuration
- Network Hardening
- Secure Device Management
- Access Control
- Infrastructure Security
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
