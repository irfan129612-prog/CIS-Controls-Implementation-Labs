# Lab 22: Hardening a Windows System

## Lab Overview

Windows system hardening is the process of improving the security posture of a Windows operating system by reducing vulnerabilities, disabling unnecessary features, and applying secure configuration settings.

In this lab, we perform basic Windows hardening techniques including disabling unnecessary services, enforcing strong password policies, configuring account lockout settings, and comparing system configurations before and after security changes.

System hardening is an important cybersecurity practice used by system administrators and security professionals to reduce attack surfaces and protect infrastructure.

---

## Objectives

By completing this lab, you will learn:

- Understand the fundamentals of Windows system hardening.
- Disable unnecessary Windows services and features.
- Reduce potential attack vectors.
- Configure strong password complexity policies.
- Implement account lockout mechanisms.
- Compare system configurations before and after security changes.
- Document security improvements.

---

## Prerequisites

Required:

- Windows 10, Windows 11, or Windows Server system.
- Virtual machine or sandbox environment for testing.
- Basic Windows administration knowledge.
- Familiarity with:
  - PowerShell commands.
  - Windows Group Policy settings.

---

# Lab Environment

Operating System:

- Windows 10 / Windows 11 / Windows Server

Tools Used:

- Windows PowerShell
- Local Group Policy Editor
- Security Policy Settings
- CSV Configuration Reports

---

# Task 1: Disabling Unnecessary Windows Services

## Identify Unnecessary Services

Unnecessary services can increase the attack surface of a Windows system.

In this lab, Telnet Client is used as an example of a service that should be disabled if it is not required.

---

## Disable Telnet Client

Open PowerShell as Administrator.

Check Telnet feature status:

Get-WindowsOptionalFeature -Online -FeatureName TelnetClient


Disable Telnet Client:

Disable-WindowsOptionalFeature -Online -FeatureName TelnetClient


Disabling unused services reduces possible entry points for attackers.

---

# Task 2: Enforcing Password Complexity and Account Lockout Policies

## Configure Password Policy

Open Local Group Policy Editor:

Press:

Win + R

Type:

gpedit.msc


Navigate to:

Computer Configuration

→ Windows Settings

→ Security Settings

→ Account Policies

→ Password Policy


Configure the following settings:

Password History:

- Remember last 5 passwords.

Minimum Password Length:

- Set minimum 8 characters.

Password Complexity:

- Enable password complexity requirements.

---

# Configure Account Lockout Policy

Navigate to:

Computer Configuration

→ Windows Settings

→ Security Settings

→ Account Policies

→ Account Lockout Policy


Configure:

Account Lockout Threshold:

- Lock account after 5 failed login attempts.

Account Lockout Duration:

- 15 minutes.

Reset Account Lockout Counter After:

- 30 minutes.

---

# Task 3: Comparing System State Before and After Hardening

## Export Initial System Configuration

Before applying security changes, create a baseline report.

Run PowerShell as Administrator:

Export-Csv -Path "C:\InitialSystemState.csv" -NoTypeInformation


This file stores the initial system configuration.

---

## Apply Hardening Changes

Perform the following security improvements:

- Disable unnecessary features.
- Configure password policies.
- Enable account lockout controls.

---

## Export Final System Configuration

After completing hardening:

Export-Csv -Path "C:\FinalSystemState.csv" -NoTypeInformation


Compare:

InitialSystemState.csv

with:

FinalSystemState.csv


to identify security improvements.

---

# Windows Hardening Best Practices

Common Windows hardening techniques include:

- Disable unused services.
- Remove unnecessary software.
- Apply security updates regularly.
- Enforce strong password policies.
- Enable account lockout controls.
- Configure firewall rules.
- Enable security auditing.
- Monitor system logs.
- Follow security baselines.

---

# Security Importance

Windows hardening helps organizations:

- Reduce attack surface.
- Prevent unauthorized access.
- Improve system security.
- Protect sensitive information.
- Maintain compliance requirements.
- Reduce risk from malware and exploitation attempts.

---

# Lab Outcome

After completing this lab, you should be able to:

- Identify unnecessary Windows services.
- Disable unused Windows features.
- Configure secure authentication policies.
- Implement account lockout protection.
- Compare security configurations.
- Document system hardening activities.

---

# Conclusion

In this lab, we successfully performed basic Windows system hardening by disabling unnecessary services, strengthening password requirements, and configuring account protection mechanisms.

These security improvements help create a more secure Windows environment by reducing vulnerabilities and limiting possible attack paths.

System hardening is a fundamental skill for cybersecurity professionals, system administrators, and security engineers.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
