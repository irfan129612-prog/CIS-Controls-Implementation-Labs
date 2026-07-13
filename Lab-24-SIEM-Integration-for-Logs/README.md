# Lab 24: SIEM Integration for Logs

## Lab Overview

SIEM (Security Information and Event Management) integration is a critical cybersecurity process that enables organizations to collect, normalize, analyze, and monitor security events from multiple sources.

In this lab, we integrate a log forwarder (Filebeat) with a SIEM platform such as Elastic Stack (Elasticsearch + Kibana) to collect system logs, forward them for analysis, verify log ingestion, and create security alerts.

This lab demonstrates the basic workflow used by SOC analysts for centralized log monitoring and threat detection.

---

## Objectives

By completing this lab, you will learn:

- Understand the role of SIEM in cybersecurity operations.
- Install and configure a log forwarding agent.
- Configure Filebeat for log collection.
- Send logs to Elasticsearch or another SIEM platform.
- Verify logs inside the SIEM dashboard.
- Search and analyze security events.
- Create basic alert rules for suspicious activities.

---

## Prerequisites

Required:

- Basic understanding of:
  - Network security concepts.
  - System logging.
  - SIEM architecture.

- Access to:
  - Linux virtual machine or test server.
  - Administrative privileges.
  - Configured SIEM environment.

Tools Used:

- Filebeat
- Elasticsearch
- Kibana
- Logstash (Optional)
- Linux System Logs

---

# Lab Environment

Architecture:

Linux Host
     |
     |
Filebeat Agent
     |
     |
Elasticsearch / Logstash
     |
     |
Kibana SIEM Dashboard


---

# Task 1: Setting Up a Log Forwarder

## Install Filebeat

Filebeat is a lightweight data shipper developed by Elastic that collects logs and forwards them to a SIEM platform.

Download Filebeat package:

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-<version>-amd64.deb


Install Filebeat:

sudo dpkg -i filebeat-<version>-amd64.deb


---

# Configure Filebeat

Open Filebeat configuration:

sudo nano /etc/filebeat/filebeat.yml


Configure log input:

filebeat.inputs:

- type: log
  enabled: true
  paths:
    - /var/log/*.log


Configure SIEM output:

output.elasticsearch:

  hosts:
    - "localhost:9200"

  username:
    "elastic"

  password:
    "changeme"


Save and exit the configuration file.

---

# Start Filebeat Service

Start Filebeat:

sudo service filebeat start


Check Filebeat status:

sudo service filebeat status


A running Filebeat service confirms that logs are ready for forwarding.

---

# Task 2: Sending Logs to SIEM

## Generate Test Logs

Generate activity on the Linux system:

Examples:

- Login attempts.
- Web service access.
- System events.
- Application logs.


Filebeat collects these events and forwards them to the SIEM platform.

---

# Verify Logs in SIEM

Open Kibana dashboard.

Navigate to:

Kibana → Discover


Search for:

- Hostname
- Source IP
- Log file
- Event timestamp
- Event severity


Confirm that logs from the test machine are indexed and searchable.

---

# Task 3: Verifying SIEM Integration

## Explore SIEM Dashboards

Analyze collected logs for:

- Source IP addresses.
- Event severity.
- Log levels.
- Authentication events.
- System activities.


Dashboards provide visibility into infrastructure security.

---

# Create Custom Alert

Create an alert rule based on suspicious activity.

Example:

Failed login attempts.

Detection Logic:

Multiple failed SSH login attempts from the same IP address.


Possible Alert:

"Multiple authentication failures detected."

---

# Test Alert Configuration

Generate a security event:

Example:

Multiple incorrect SSH login attempts.


Verify:

- Alert generation.
- Event visibility.
- Notification delivery.

---

# SIEM Integration Workflow

The complete SIEM workflow:

1. Generate system events.
2. Collect logs using Filebeat.
3. Forward logs to SIEM.
4. Index and normalize events.
5. Search and analyze logs.
6. Create detection rules.
7. Generate security alerts.

---

# Security Importance

SIEM integration helps organizations:

- Centralize security monitoring.
- Detect suspicious activities.
- Investigate incidents.
- Perform threat hunting.
- Improve incident response.
- Maintain security visibility.

---

# Lab Outcome

After completing this lab, you should be able to:

- Install and configure Filebeat.
- Forward logs to a SIEM platform.
- Verify successful log ingestion.
- Analyze events in Kibana.
- Create basic security alerts.
- Understand SOC log monitoring workflow.

---

# Conclusion

In this lab, we successfully integrated a log forwarding agent with a SIEM platform.

We learned how to collect system logs, send them to Elasticsearch, analyze events through Kibana, and create alerts for suspicious activities.

SIEM integration is a fundamental skill for SOC analysts, security engineers, and threat hunters.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
