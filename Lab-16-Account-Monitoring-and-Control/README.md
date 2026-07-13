# Lab 16 – Account Monitoring & Control

## Overview

This lab demonstrates how to monitor, manage, and secure user accounts on a Linux system. It focuses on identifying user and service accounts, disabling or removing unnecessary accounts, implementing automatic session timeouts, and configuring account lockout policies to defend against unauthorized access and brute-force attacks.

---

## Objectives

- List and analyze Linux user accounts.
- Identify service (non-human) accounts.
- Disable or remove unnecessary user accounts.
- Configure automatic session timeout.
- Implement account lockout policies.
- Improve Linux account security.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Authentication | PAM |
| Shell | Bash |
| User Management | usermod, userdel |

---

## Task 1 – Enumerate User Accounts

The `/etc/passwd` file was examined to identify all local user accounts.

The list included:

- Human user accounts
- System accounts
- Service accounts

Service accounts were identified using their UID values.

---

## Task 2 – Identify Service Accounts

Accounts with low UID values (typically below 1000) were identified as service accounts.

Examples include:

- root
- daemon
- bin
- sys
- www-data
- nobody

These accounts are used by system services rather than interactive users.

---

## Task 3 – Disable or Remove Unnecessary Accounts

Unused accounts were reviewed.

Security actions included:

- Locking inactive accounts
- Removing obsolete accounts
- Verifying account status

Only required user accounts remained active.

---

## Task 4 – Configure Session Timeout

A shell session timeout policy was configured using the **TMOUT** environment variable.

Inactive user sessions automatically terminate after the configured timeout period, reducing the risk of unauthorized access to unattended terminals.

---

## Task 5 – Configure Account Lockout

A PAM-based account lockout policy was configured.

Example policy:

- Lock account after 5 failed login attempts.
- Automatically unlock after 10 minutes.

This helps mitigate brute-force password attacks.

---

## Findings

- Enumerated all local accounts.
- Identified service accounts.
- Disabled unnecessary accounts.
- Configured automatic session timeout.
- Implemented account lockout policy.
- Improved Linux account security.

---

## Security Benefits

Account monitoring provides several advantages:

- Prevents unauthorized account usage.
- Reduces insider threats.
- Protects inactive sessions.
- Mitigates brute-force attacks.
- Supports access auditing.
- Improves system security.

---

## Learning Outcomes

After completing this lab, I learned how to:

- Audit Linux user accounts.
- Identify service accounts.
- Lock and remove unused accounts.
- Configure session timeout.
- Implement account lockout policies.
- Secure Linux authentication.
- Improve account lifecycle management.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1078 | Valid Accounts |
| T1087 | Account Discovery |
| T1110 | Brute Force |

---

## CIS Control Mapping

**CIS Control 5 – Account Management**

This lab demonstrates secure account lifecycle management by auditing user accounts, disabling unnecessary accounts, implementing session timeout policies, and configuring account lockout mechanisms to reduce unauthorized access risks.

---

## Skills Demonstrated

- Linux Administration
- User Management
- Account Monitoring
- PAM Configuration
- Session Management
- Access Control
- Account Hardening
- Security Auditing
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
