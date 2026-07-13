# Lab 13 – Data Protection Basics

## Overview

This lab demonstrates the implementation of basic data protection techniques using encryption and secure communication protocols. The lab focuses on encrypting files with AES-256, configuring HTTPS for secure web communication, replacing insecure Telnet with SSH, and validating encryption through practical testing. These controls help protect the confidentiality and integrity of sensitive information.

---

## Objectives

- Understand the principles of data protection.
- Encrypt files using AES-256 encryption.
- Configure secure communications using HTTPS.
- Replace Telnet with SSH.
- Validate encryption and secure communications.
- Improve data confidentiality and integrity.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Encryption Tool | OpenSSL |
| SSH Server | OpenSSH |
| Web Server | Apache / Nginx |
| Encryption Algorithm | AES-256 |
| Network Analysis Tool | Wireshark (Optional) |

---

## Task 1 – Encrypt Data

Sensitive files were protected using strong AES-256 encryption.

Encryption methods demonstrated include:

- 7-Zip (AES-256)
- VeraCrypt (AES)
- OpenSSL File Encryption

A strong password was used to secure the encrypted archive.

---

## Task 2 – Configure Secure Communications

### HTTPS

A self-signed SSL certificate was generated using OpenSSL.

The web server was configured to support HTTPS for encrypted communication.

### SSH

The OpenSSH Server was installed and enabled.

If Telnet was available, it was disabled because it transmits credentials in plain text.

SSH became the primary remote administration protocol.

---

## Task 3 – Validate Encryption

The encrypted file was tested to ensure it could not be accessed without the correct password.

HTTPS communication was verified by confirming encrypted TLS sessions.

SSH connectivity was tested to confirm secure remote access.

---

## Findings

- Successfully encrypted sensitive data.
- Generated SSL certificates.
- Configured HTTPS.
- Enabled SSH secure remote access.
- Disabled insecure services where applicable.
- Verified encrypted communication.

---

## Security Benefits

Data protection techniques help organizations:

- Protect confidential information.
- Prevent unauthorized access.
- Secure network communications.
- Replace insecure legacy protocols.
- Improve compliance with security standards.
- Enhance overall cybersecurity posture.

---

## Learning Outcomes

After completing this lab, I learned how to:

- Encrypt files using AES-256.
- Generate SSL certificates.
- Configure HTTPS.
- Install and configure OpenSSH.
- Disable insecure remote access protocols.
- Validate encrypted communications.
- Strengthen data protection practices.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1040 | Network Sniffing |
| T1021 | Remote Services |
| T1557 | Adversary-in-the-Middle |

---

## CIS Control Mapping

**CIS Control 3 – Data Protection**

This lab demonstrates how organizations protect sensitive information using encryption, secure communication protocols, and strong access controls to maintain confidentiality and integrity.

---

## Skills Demonstrated

- Linux Administration
- OpenSSL
- HTTPS Configuration
- SSH Configuration
- File Encryption
- AES-256 Encryption
- Data Protection
- Secure Communications
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
