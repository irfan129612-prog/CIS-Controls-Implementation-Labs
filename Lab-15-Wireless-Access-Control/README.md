# Lab 15 – Wireless Access Control

## Overview

This lab demonstrates the implementation of secure wireless network access controls by configuring a wireless router with modern encryption standards and secure authentication mechanisms. The lab focuses on enabling WPA2/WPA3 encryption, disabling insecure features such as WPS, and validating that only authorized users can access the wireless network.

---

## Objectives

- Understand wireless access control mechanisms.
- Configure secure Wi-Fi encryption.
- Disable insecure wireless features.
- Verify authorized and unauthorized wireless access.
- Improve wireless network security.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS / Windows |
| Network Device | Wireless Router |
| Wireless Security | WPA2-PSK (AES) / WPA3-SAE |
| Browser | Firefox / Chrome |
| Management Interface | Web GUI |

---

## Task 1 – Access the Wireless Router

The router management interface was accessed through its default gateway using a web browser.

Common management IP addresses:

- 192.168.0.1
- 192.168.1.1

Administrator credentials were used to authenticate and access the configuration interface.

---

## Task 2 – Configure Wireless Encryption

The wireless security mode was updated to a secure encryption standard.

Configuration applied:

- Security Mode: WPA2-PSK (AES) or WPA3-SAE
- Strong Wi-Fi Passphrase (12+ characters)
- Mixed upper/lowercase letters
- Numbers
- Special characters

Example:

```
S3cur3P@ssw0rd!
```

---

## Task 3 – Disable WPS

Wi-Fi Protected Setup (WPS) was disabled because it is vulnerable to brute-force attacks.

Disabling WPS significantly improves wireless security by preventing PIN-based authentication attacks.

---

## Task 4 – Validate Wireless Security

An unauthorized device attempted to connect without the correct password.

Results:

- Connection request rejected.
- Authentication failed.
- Authorized devices successfully connected using the configured passphrase.

This confirms that wireless access control is functioning correctly.

---

## Findings

- Successfully accessed router management.
- Enabled WPA2/WPA3 encryption.
- Configured a strong wireless passphrase.
- Disabled WPS.
- Verified unauthorized access prevention.
- Improved wireless network security.

---

## Security Benefits

Wireless access control helps organizations:

- Prevent unauthorized Wi-Fi access.
- Protect network traffic through encryption.
- Mitigate brute-force attacks.
- Secure wireless communications.
- Reduce wireless attack surface.
- Improve overall network security.

---
## Learning Outcomes

After completing this lab, I learned how to:

- Secure wireless networks.
- Configure WPA2/WPA3 encryption.
- Disable insecure WPS authentication.
- Configure strong Wi-Fi passwords.
- Verify wireless access control.
- Apply wireless security best practices.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1110 | Brute Force |
| T1040 | Network Sniffing |
| T1021 | Remote Services |

---

## CIS Control Mapping

**CIS Control 12 – Network Infrastructure Management**

This lab demonstrates secure wireless network configuration by enabling strong encryption, disabling insecure features such as WPS, and enforcing authenticated access to wireless infrastructure.

---

## Skills Demonstrated

- Wireless Security
- Router Administration
- WPA2/WPA3 Configuration
- WPS Hardening
- Network Security
- Access Control
- Infrastructure Security
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
