# Lab 06 – Monitoring & Analysis of Audit Logs

## Overview

This lab demonstrates how to configure, collect, and analyze audit logs on Linux systems to improve security monitoring and incident detection. Logging plays a critical role in identifying unauthorized activities, authentication failures, privilege escalation attempts, and other security-related events. The lab also introduces the process of preparing logs for centralized analysis using SIEM platforms.

---

## Objectives

- Understand the importance of audit logging.
- Configure verbose logging on Linux.
- Collect audit logs into a central location.
- Analyze authentication logs for suspicious activities.
- Detect failed login attempts using command-line tools.
- Prepare logs for SIEM integration.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 |
| Logging Service | rsyslog |
| Log File | /var/log/auth.log |
| Analysis Tools | grep, less, cat |

---

## Task 1 – Enable Audit Logging

The rsyslog configuration was reviewed to ensure authentication events were being logged.

Authentication logs were stored in:

```
/var/log/auth.log
```

The logging service was restarted to apply configuration changes.

---

## Task 2 – Collect Audit Logs

A dedicated directory was created to store collected logs for analysis.

Authentication logs were copied into the working directory to preserve the original system logs.

Collected logs can later be imported into SIEM platforms such as:

- Elasticsearch
- Kibana
- Graylog
- Wazuh

---

## Task 3 – Analyze Audit Logs

Authentication logs were analyzed for suspicious events.

The investigation focused on:

- Failed login attempts
- Invalid usernames
- Repeated authentication failures
- Privilege escalation attempts
- Unauthorized SSH access
- Unknown IP addresses

Example events include:

- Failed password
- Invalid user
- Accepted password
- sudo session opened
- Authentication failure

---

## Sample Investigation

Example command used to identify failed logins:

```bash
grep "Failed" auth.log
```

Example indicators investigated:

| Event | Purpose |
|--------|----------|
| Failed password | Detect brute-force attacks |
| Invalid user | Detect username enumeration |
| Accepted password | Verify successful logins |
| sudo | Monitor privilege escalation |
| authentication failure | Detect unauthorized access attempts |

---

## Findings

- Successfully verified Linux authentication logging.
- Collected audit logs into a dedicated directory.
- Filtered authentication events using grep.
- Identified failed login attempts.
- Demonstrated basic log analysis techniques.
- Prepared logs for SIEM ingestion.

---

## Security Benefits

Audit logging enables organizations to:

- Detect brute-force attacks.
- Monitor privileged account usage.
- Investigate security incidents.
- Support forensic investigations.
- Meet compliance requirements.
- Improve security visibility.

---

## Learning Outcomes

After completing this lab, I learned how to:

- Configure Linux logging.
- Collect authentication logs.
- Analyze security events.
- Detect suspicious login attempts.
- Perform basic log investigation.
- Prepare logs for SIEM ingestion.
- Improve endpoint monitoring capabilities.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1110 | Brute Force |
| T1078 | Valid Accounts |
| T1059 | Command Execution |
| T1548 | Abuse Elevation Control Mechanism |

---

## CIS Control Mapping

**CIS Control 8 – Audit Log Management**

This lab demonstrates how organizations collect, retain, monitor, and analyze audit logs to detect security events and support incident response activities.

---

## Skills Demonstrated

- Linux Administration
- Audit Logging
- Log Collection
- Log Analysis
- Authentication Monitoring
- Incident Investigation
- SIEM Fundamentals
- Threat Detection
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
