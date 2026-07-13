# Lab 09 – Limiting Network Ports, Protocols, & Services

## Overview

This lab demonstrates how to identify open network ports, analyze active services, and reduce the attack surface by blocking unnecessary ports using the Linux firewall. The lab focuses on reviewing listening ports, configuring firewall rules with UFW or iptables, and validating that unwanted services are restricted.

---

## Objectives

- Identify open TCP and UDP ports.
- Analyze listening network services.
- Configure firewall rules to block unused ports.
- Validate firewall changes.
- Reduce the system attack surface.
- Improve endpoint network security.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Firewall | UFW (Uncomplicated Firewall) |
| Network Tools | ss, netstat |
| Packet Filter | iptables |

---

## Task 1 – Identify Open Ports

The system's listening ports were identified using Linux networking tools.

The following commands were used to enumerate active TCP and UDP services:

- ss
- netstat

The output was reviewed to identify unnecessary services that could increase the attack surface.

---

## Task 2 – Configure Firewall Rules

The Ubuntu Firewall (UFW) was inspected to determine its current status.

A firewall rule was created to block insecure services such as Telnet (TCP Port 23).

The firewall configuration was then reloaded to apply the new rule.

Alternatively, iptables can be used to create packet filtering rules for more advanced firewall management.

---

## Task 3 – Validate Configuration

After applying firewall rules, listening ports were verified again to confirm that unwanted services were no longer accessible.

Firewall status and configured rules were also reviewed.

---

## Findings

- Successfully identified active network ports.
- Reviewed listening services.
- Configured firewall rules.
- Blocked insecure network services.
- Verified firewall configuration.
- Reduced the system attack surface.

---

## Security Benefits

Limiting unnecessary ports and services helps organizations:

- Reduce attack surface.
- Prevent unauthorized network access.
- Disable insecure legacy protocols.
- Improve endpoint security.
- Strengthen firewall protection.
- Support security compliance.

---


## Learning Outcomes

After completing this lab, I learned how to:

- Identify open network ports.
- Analyze active services.
- Configure UFW firewall rules.
- Create basic iptables rules.
- Validate firewall configurations.
- Reduce the Linux attack surface.
- Improve network security.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1046 | Network Service Discovery |
| T1021 | Remote Services |
| T1133 | External Remote Services |

---

## CIS Control Mapping

**CIS Control 12 – Network Infrastructure Management**

This lab demonstrates how organizations identify, restrict, and manage unnecessary network ports, protocols, and services to reduce the attack surface and improve system security.

---

## Skills Demonstrated

- Linux Administration
- Network Security
- UFW Firewall
- iptables
- Port Management
- Service Hardening
- Network Enumeration
- System Hardening
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
