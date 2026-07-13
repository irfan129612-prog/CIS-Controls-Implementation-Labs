# Lab 12 – Boundary Defense

## Overview

This lab demonstrates the implementation of basic network boundary defenses using a Linux firewall (UFW). The lab focuses on documenting the network boundary, reviewing firewall rules, restricting unnecessary inbound traffic, and validating that unauthorized access attempts are blocked. Proper boundary defense reduces the attack surface and protects internal network resources from external threats.

---

## Objectives

- Understand the purpose of network boundary defenses.
- Document the network topology.
- Review inbound and outbound firewall rules.
- Block unnecessary inbound ports.
- Validate firewall protection through testing.
- Improve network perimeter security.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Firewall | UFW (Uncomplicated Firewall) |
| Network Utility | Netcat (nc) |
| Network Diagram Tool | draw.io |

---

## Task 1 – Document the Network Boundary

A simple network diagram was created to identify the boundary between external and internal networks.

Example topology:

```
Internet
    │
    ▼
+-----------+
|   Router  |
+-----------+
      │
      ▼
+-----------+
| Firewall  |
+-----------+
      │
      ▼
+----------------------+
| Internal Network     |
| PCs | Servers | IoT  |
+----------------------+
```

The firewall serves as the primary boundary defense, filtering inbound and outbound traffic before it reaches internal systems.

---

## Task 2 – Verify Firewall Rules

The firewall configuration was reviewed using UFW.

Existing inbound and outbound rules were inspected to identify unnecessary open ports.

Unused services were restricted by creating firewall rules that deny inbound traffic.

Example:

- Block TCP Port 8080
- Verify firewall status
- Review active rules

---

## Task 3 – Validate Boundary Defense

A connection attempt was made to the blocked port from another system.

The firewall correctly denied unauthorized access, confirming that the configured rule was functioning as expected.

This validation demonstrated that the network boundary successfully enforced access control policies.

---

## Findings

- Successfully documented the network boundary.
- Reviewed active firewall rules.
- Blocked unnecessary inbound ports.
- Validated firewall enforcement.
- Reduced the network attack surface.

---

## Security Benefits

Boundary defense helps organizations:

- Prevent unauthorized network access.
- Restrict unnecessary services.
- Protect internal assets.
- Reduce attack surface.
- Improve network segmentation.
- Strengthen perimeter security.


---

## Learning Outcomes

After completing this lab, I learned how to:

- Design a basic network boundary.
- Configure UFW firewall rules.
- Block unauthorized inbound traffic.
- Validate firewall effectiveness.
- Reduce network attack surface.
- Apply perimeter security best practices.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1046 | Network Service Discovery |
| T1190 | Exploit Public-Facing Application |
| T1133 | External Remote Services |

---

## CIS Control Mapping

**CIS Control 13 – Network Monitoring and Defense**

This lab demonstrates how organizations establish and enforce network boundary defenses by configuring firewall rules, restricting unnecessary network access, and validating perimeter security controls.

---

## Skills Demonstrated

- Linux Administration
- UFW Firewall
- Network Security
- Boundary Defense
- Firewall Rule Management
- Network Hardening
- Perimeter Security
- Network Monitoring
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
