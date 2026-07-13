# Lab 20 – Penetration Testing & Red Team Exercises

## Overview

This lab introduces the fundamentals of penetration testing and Red Team exercises using open-source security tools. The exercise focuses on reconnaissance, service enumeration, vulnerability assessment, and identifying common security misconfigurations within an authorized lab environment.

> **Disclaimer:** All testing performed in this lab is conducted against authorized systems in a controlled environment. Do not perform these activities against systems without explicit permission.

---

## Objectives

- Understand penetration testing methodology.
- Perform network reconnaissance using Nmap.
- Enumerate services and versions.
- Use Metasploit auxiliary modules for vulnerability assessment.
- Identify common system misconfigurations.
- Document findings and recommend security improvements.

---

## Lab Environment

| Component | Details |
|-----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Scanner | Nmap |
| Exploitation Framework | Metasploit Framework |
| Target | Authorized Lab Machine |
| Virtualization | AWS EC2 / Virtual Machine |

---

## Task 1 – Network Reconnaissance with Nmap

Nmap was used to discover open ports and identify services running on the target system.

### Basic Version Scan

```bash
nmap -sV <target-ip>
```

### Activities

- Identified active host.
- Enumerated open ports.
- Detected running services.
- Identified software versions.

---

## Task 2 – Vulnerability Assessment with Metasploit

Metasploit Framework was used to enumerate SMB services using an auxiliary scanner.

### Launch Metasploit

```bash
msfconsole
```

### Load SMB Scanner

```bash
use auxiliary/scanner/smb/smb_version
```

### Configure Target

```bash
set RHOSTS <target-ip>
```

### Execute Scan

```bash
run
```

### Activities

- Enumerated SMB service.
- Identified SMB version.
- Determined whether SMB configuration required further investigation.

---

## Task 3 – Security Assessment

The objective was to identify common security weaknesses rather than compromise the target.

Examples of security issues examined:

- Default credentials
- Outdated software
- Weak service configurations
- Unnecessary open ports
- Insecure protocols

The example exploit module discussed in the lab demonstrates how historical vulnerabilities can be researched in a safe lab environment.

---

## Findings

Example findings include:

| Finding | Risk | Recommendation |
|----------|------|----------------|
| Open SSH Port | Low | Restrict access using firewall rules |
| SMB Service Enabled | Medium | Disable if unnecessary and update software |
| Unnecessary Open Ports | Medium | Close unused ports |
| Outdated Services | High | Apply latest security updates |
| Weak Configuration | Medium | Harden system configuration |

---

## Recommendations

- Apply latest security patches.
- Disable unnecessary services.
- Close unused network ports.
- Use strong authentication.
- Enable firewall protection.
- Regularly perform vulnerability assessments.
- Continuously monitor systems for suspicious activity.

---

## Penetration Testing Methodology

```
Planning
     │
     ▼
Reconnaissance
     │
     ▼
Enumeration
     │
     ▼
Vulnerability Assessment
     │
     ▼
Validation
     │
     ▼
Reporting
     │
     ▼
Remediation
```

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1046 | Network Service Discovery |
| T1595 | Active Scanning |
| T1018 | Remote System Discovery |
| T1049 | System Network Connections Discovery |

---

## CIS Control Mapping

**CIS Control 18 – Penetration Testing**

This lab demonstrates authorized security testing through network reconnaissance, service enumeration, vulnerability assessment, and security reporting.

---

## Skills Demonstrated

- Nmap
- Metasploit Framework
- Port Scanning
- Service Enumeration
- Vulnerability Assessment
- Security Hardening
- Linux Security
- Red Team Fundamentals
- Network Reconnaissance
- Security Reporting

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
