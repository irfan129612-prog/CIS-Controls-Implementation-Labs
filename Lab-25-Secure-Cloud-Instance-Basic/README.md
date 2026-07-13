# Lab 25: Secure Cloud Instance (Basic)

## Lab Overview

Cloud security is an essential part of modern cybersecurity. Securely configuring cloud virtual machines helps protect infrastructure from unauthorized access, data breaches, and malicious activities.

In this lab, we launch a cloud virtual machine, configure network security rules, restrict inbound traffic to required ports, enable Multi-Factor Authentication (MFA), and document security configurations.

This lab introduces basic cloud security practices that are commonly used by cloud administrators and security engineers.

---

## Objectives

By completing this lab, you will learn:

- Understand the process of launching a secure cloud VM.
- Configure basic cloud security settings.
- Restrict unnecessary inbound network access.
- Allow only required service ports.
- Enable Multi-Factor Authentication for cloud accounts.
- Document firewall and security group configurations.

---

## Prerequisites

Required:

- Basic understanding of cloud computing.
- Knowledge of virtual machines.
- Cloud provider account access.

Supported platforms:

- OpenStack
- AWS
- Azure
- Other cloud providers

Required knowledge:

- Command-line interface.
- Basic networking concepts.
- Firewall and security group concepts.

Additional Requirement:

- MFA application installed:
  - Google Authenticator
  - Authy
  - Microsoft Authenticator

---

# Lab Environment

Cloud Platform:

- OpenStack / AWS / Azure

Operating System Images:

- Ubuntu Linux
- CentOS Linux

Security Components:

- Cloud VM Instance
- Security Groups
- Firewall Rules
- Multi-Factor Authentication

---

# Task 1: Launch a Cloud Virtual Machine

## Access Cloud Console

Steps:

1. Login to cloud provider dashboard.
2. Open Compute / Virtual Machine section.
3. Select create new instance.

---

## Select Operating System Image

Choose:

- Ubuntu Linux
or
- CentOS Linux


Select a small instance type to reduce resource usage and cost.

---

## Configure Instance Settings

Configure:

- Instance name.
- Region.
- Availability zone.
- Network settings.
- Authentication method.

Select a region closer to expected users for better performance.

---

## Launch Instance

Review all settings.

Click:

Launch Instance


After deployment, verify:

- VM status.
- Assigned IP address.
- Network connectivity.

---

# Task 2: Restrict Inbound Ports

## Configure Security Group Rules

Navigate to:

Cloud Console

→ Networking

→ Security Groups


Configure inbound rules.

Required ports:

Port 22:

Purpose:
SSH Remote Administration


Port 80:

Purpose:
HTTP Web Traffic


Port 443:

Purpose:
HTTPS Secure Web Traffic


---

## Open Required Ports

Example OpenStack commands:

Allow SSH:

openstack security group rule create --protocol tcp --dst-port 22:22 --remote-ip 0.0.0.0/0 <security-group-id>


Allow HTTP:

openstack security group rule create --protocol tcp --dst-port 80:80 --remote-ip 0.0.0.0/0 <security-group-id>


Allow HTTPS:

openstack security group rule create --protocol tcp --dst-port 443:443 --remote-ip 0.0.0.0/0 <security-group-id>


---

## Remove Unnecessary Rules

Remove:

- Unused ports.
- Default insecure rules.
- Unnecessary public access.


Principle:

Allow only required traffic.

---

# Task 3: Enable Multi-Factor Authentication (MFA)

## Access Account Security Settings

Navigate to:

Account Settings

→ Security

→ Multi-Factor Authentication


---

## Enable MFA

Steps:

1. Select enable MFA.
2. Scan QR code using authenticator application.
3. Enter verification code.
4. Save configuration.

Supported applications:

- Google Authenticator.
- Authy.
- Microsoft Authenticator.

---

## Test MFA

Steps:

1. Logout from cloud console.
2. Login again.
3. Enter password.
4. Enter MFA verification code.

Confirm successful authentication.

---

# Task 4: Document Security Configuration

## Security Group Documentation

Document all firewall rules applied.

Include:

- Protocol.
- Port range.
- Source IP.
- Purpose.


Example:

------------------------------------------------
Protocol | Port | Source       | Purpose
------------------------------------------------
TCP      | 22   | 0.0.0.0/0    | SSH Access
TCP      | 80   | 0.0.0.0/0    | HTTP Traffic
TCP      | 443  | 0.0.0.0/0    | HTTPS Traffic
------------------------------------------------


---

# Cloud Security Best Practices

Recommended practices:

- Enable MFA.
- Use strong passwords.
- Limit exposed ports.
- Use SSH keys instead of passwords.
- Apply security updates regularly.
- Monitor cloud activity logs.
- Remove unused resources.
- Follow least privilege access.

---

# Security Importance

Cloud instance hardening helps organizations:

- Prevent unauthorized access.
- Reduce attack surface.
- Protect cloud workloads.
- Improve compliance.
- Secure internet-facing services.

---

# Lab Outcome

After completing this lab, you should be able to:

- Deploy a basic cloud VM.
- Configure security groups.
- Restrict inbound traffic.
- Enable MFA protection.
- Document cloud security settings.
- Apply basic cloud security principles.

---

# Conclusion

In this lab, we successfully secured a cloud virtual machine by applying basic security controls.

We configured restricted network access, enabled MFA protection, and documented firewall rules.

These practices form the foundation of cloud security and are essential skills for cloud administrators, DevOps engineers, and cybersecurity professionals.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
