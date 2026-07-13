# Lab 23: Hardening a Linux System

## Lab Overview

Linux system hardening is the process of securing a Linux operating system by reducing vulnerabilities, removing unnecessary components, and applying security best practices.

In this lab, we perform essential Linux hardening activities including removing unused packages, securing SSH access, implementing CIS Linux Benchmark recommendations, and using security auditing tools.

System hardening helps reduce the attack surface and improves the overall security posture of Linux servers and infrastructure.

---

## Objectives

By completing this lab, you will learn:

- Understand the importance of Linux system hardening.
- Identify and remove unnecessary packages.
- Secure SSH configuration.
- Disable insecure remote access methods.
- Implement security baselines using CIS Linux Benchmark.
- Use security auditing tools to evaluate system security.
- Apply Linux security best practices.

---

## Prerequisites

Required:

- Basic knowledge of Linux command-line interface.
- Access to Linux operating system:

  - Ubuntu / Debian
  - CentOS / Red Hat Enterprise Linux

- Internet access for downloading security guides and tools.

---

# Lab Environment

Operating Systems:

- Ubuntu Linux
- CentOS / RHEL

Tools Used:

- APT Package Manager
- YUM Package Manager
- SSH
- CIS Linux Benchmark
- Lynis Security Auditor

---

# Task 1: Remove Unused Packages

## Identify Installed Packages

Unused software packages increase the attack surface of a Linux system.

### Ubuntu / Debian:

List installed packages:

sudo apt list --installed


### CentOS / RHEL:

List installed packages:

sudo yum list installed


Review installed packages and identify unnecessary applications such as:

- Unused development tools.
- Games.
- Unnecessary services.
- Old software packages.

---

## Remove Unnecessary Packages

### Ubuntu / Debian:

Remove unwanted package:

sudo apt remove package_name


### CentOS / RHEL:

Remove unwanted package:

sudo yum remove package_name


Removing unused packages helps reduce possible vulnerabilities.

---

# Task 2: Configure SSH for Enhanced Security

SSH is commonly used for remote Linux administration. Securing SSH prevents unauthorized access attempts.

---

## Disable Root Login

Open SSH configuration file:

sudo nano /etc/ssh/sshd_config


Find:

PermitRootLogin


Change value:

PermitRootLogin no


Save the configuration.

---

## Restart SSH Service

Ubuntu / Debian:

sudo systemctl restart ssh


CentOS / RHEL:

sudo systemctl restart sshd


This prevents direct root login through SSH.

---

## Implement SSH Key-Based Authentication

Generate SSH key pair:

ssh-keygen -t rsa -b 4096


Copy public key to remote server:

ssh-copy-id user@remote_server


Key-based authentication is more secure than password-based authentication.

---

# Task 3: Implement CIS Linux Security Baseline

## Introduction to CIS Benchmark

The CIS (Center for Internet Security) Linux Benchmark provides security recommendations for hardening Linux systems.

It includes guidelines for:

- User account security.
- File permissions.
- Network configuration.
- Logging and monitoring.
- Authentication settings.
- Service management.

---

## Apply Distro-Specific Security Recommendations

Steps:

1. Download CIS Benchmark guide for your Linux distribution.
2. Review security recommendations.
3. Identify required hardening changes.
4. Apply suitable security configurations.
5. Test applications after changes.

Care should be taken to avoid breaking required system services.

---

# Task 4: Automate Hardening Using Lynis

## Install Lynis Security Auditor

### Ubuntu / Debian:

Install Lynis:

sudo apt install lynis


### CentOS / RHEL:

Install Lynis:

sudo yum install lynis


---

## Run Security Audit

Execute:

lynis audit system


Lynis will analyze:

- System configuration.
- Authentication settings.
- Installed software.
- Network security.
- Logging configuration.
- Hardening improvements.

---

# Linux Hardening Best Practices

Recommended Linux security practices:

- Remove unnecessary software.
- Keep packages updated.
- Disable unused services.
- Secure SSH configuration.
- Use SSH keys instead of passwords.
- Apply CIS security benchmarks.
- Enable firewall protection.
- Monitor system logs.
- Configure proper file permissions.
- Perform regular security audits.

---

# Security Importance

Linux hardening helps organizations:

- Reduce attack surface.
- Prevent unauthorized access.
- Protect servers from exploitation.
- Improve compliance.
- Maintain secure infrastructure.
- Strengthen cybersecurity defenses.

---

# Lab Outcome

After completing this lab, you should be able to:

- Identify unnecessary Linux packages.
- Remove unused software safely.
- Configure secure SSH settings.
- Implement CIS Linux security recommendations.
- Perform security audits using Lynis.
- Apply Linux hardening principles.

---

# Conclusion

In this lab, we performed essential Linux hardening activities by removing unnecessary packages, securing SSH access, and implementing security baseline recommendations.

Linux hardening is a fundamental cybersecurity skill required for system administrators, security engineers, and SOC professionals to maintain secure and reliable systems.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
