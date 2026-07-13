# Lab 19 – Incident Response & Management

## Overview

This lab demonstrates the fundamental Incident Response (IR) lifecycle using open-source security tools. It covers the roles and responsibilities of an Incident Response Team (IRT), the four phases of incident handling (Detection, Containment, Eradication, and Recovery), and a scenario-based malware response exercise using Suricata and ClamAV.

---

## Objectives

- Understand Incident Response roles and responsibilities.
- Learn the Incident Response lifecycle.
- Detect suspicious network activity using Suricata.
- Contain a compromised system.
- Remove malware using ClamAV.
- Recover affected systems and validate normal operation.
- Document the complete incident response process.

---

## Lab Environment

| Component | Details |
|-----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| IDS | Suricata |
| Anti-Malware | ClamAV |
| Firewall | iptables |
| Package Manager | APT |

---

## Incident Response Lifecycle

### 1. Detection

The first stage is identifying suspicious activity through monitoring tools.

Suricata was used to inspect live network traffic for abnormal behavior and malicious signatures.

Example:

```bash
sudo suricata -c /etc/suricata/suricata.yaml -i eth0
```

Activities:

- Started Suricata IDS.
- Monitored live network traffic.
- Identified suspicious network behavior.
- Generated alerts for investigation.

---

### 2. Containment

After identifying the threat, the infected system was isolated to prevent lateral movement.

Example:

```bash
sudo iptables -A INPUT -s <malicious-IP> -j DROP
```

Activities:

- Blocked malicious IP addresses.
- Prevented further communication.
- Limited the spread of malware.

---

### 3. Eradication

The root cause of the incident was removed using ClamAV.

Virus definitions were updated before scanning.

Example:

```bash
sudo freshclam
```

Scan and remove malware:

```bash
sudo clamscan --remove --recursive /
```

Activities:

- Updated malware signatures.
- Performed a recursive system scan.
- Removed detected malicious files.

---

### 4. Recovery

The affected system was restored to normal operation.

Example:

```bash
sudo apt update
sudo apt upgrade -y
```

Activities:

- Installed latest security patches.
- Verified system functionality.
- Continued monitoring for suspicious activity.

---

## Incident Response Roles

| Role | Responsibility |
|------|----------------|
| Incident Lead | Coordinates the incident response process |
| Communication Lead | Handles internal and external communication |
| Security Analyst | Investigates alerts and analyzes threats |
| System Administrator | Restores affected systems |
| Management | Provides approvals and business decisions |

---

## Scenario-Based Exercise

### Scenario

A workstation begins showing:

- Slow system performance
- High CPU usage
- Unusual outbound network traffic
- Possible malware infection

### Response

**Detection**

- Monitored traffic using Suricata.
- Confirmed suspicious activity.

**Containment**

- Blocked the infected host using firewall rules.
- Prevented communication with malicious IP addresses.

**Eradication**

- Updated ClamAV signatures.
- Removed detected malware.

**Recovery**

- Updated the operating system.
- Restored normal functionality.
- Continued monitoring for additional threats.

---

## Findings

- Successfully monitored network traffic.
- Demonstrated incident detection.
- Isolated compromised systems.
- Removed malware using ClamAV.
- Restored normal operations.
- Understood the complete Incident Response lifecycle.

---

## Incident Response Flow

```

Alert Generated
↓
Detection
↓
Analysis
↓
Containment
↓
Eradication
↓
Recovery
↓
Lessons Learned

```

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1070 | Indicator Removal |
| T1562 | Impair Defenses |
| T1105 | Ingress Tool Transfer |
| T1046 | Network Service Discovery |

---

## CIS Control Mapping

**CIS Control 17 – Incident Response Management**

This lab demonstrates incident detection, containment, eradication, recovery, documentation, and response planning using open-source security tools.

---

## Skills Demonstrated

- Incident Response
- Incident Handling
- Suricata IDS
- ClamAV
- Malware Detection
- Network Monitoring
- Firewall Management
- Linux Security
- Threat Detection
- Recovery Procedures

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
