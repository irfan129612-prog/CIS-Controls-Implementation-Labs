# Lab 10 – Data Recovery Capabilities

## Overview

This lab demonstrates the fundamentals of data backup and recovery using native Linux utilities. The objective is to protect critical data by creating manual and scheduled backups, restoring archived files, and verifying data integrity after recovery. These practices are essential for disaster recovery, business continuity, and data protection.

---

## Objectives

- Understand the importance of data backup and recovery.
- Create a manual backup using the tar utility.
- Configure scheduled backups using Cron.
- Restore archived data.
- Verify restored data integrity.
- Learn basic disaster recovery procedures.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Backup Utility | tar |
| Scheduler | cron |
| Verification Tool | diff |

---

## Task 1 – Select Data for Backup

A directory containing important files was selected for backup.

Example:

```
/home/ubuntu/Documents
```

The selected directory served as the source for both manual and scheduled backup operations.

---

## Task 2 – Perform a Backup

### Manual Backup

A compressed archive was created using the **tar** utility.

The backup archive included all files and directories while reducing storage space through gzip compression.

### Scheduled Backup

A Cron job was configured to automate daily backups.

The backup filename included the current date, allowing multiple recovery points to be maintained.

---

## Task 3 – Restore Data

The backup archive was extracted into a separate recovery directory.

The restore process recreated the original folder structure and files.

---

## Task 4 – Verify Data Integrity

The original directory and restored directory were compared using the **diff** utility.

No differences indicate that the backup and restore process successfully preserved the data.

---

## Findings

- Successfully created a compressed backup archive.
- Configured automated backups using Cron.
- Restored archived data.
- Verified data integrity after restoration.
- Demonstrated a complete backup and recovery workflow.

---

## Security Benefits

Implementing backup and recovery procedures helps organizations:

- Prevent permanent data loss.
- Recover from ransomware attacks.
- Improve business continuity.
- Support disaster recovery planning.
- Protect critical information assets.
- Maintain operational resilience.


---

## Learning Outcomes

After completing this lab, I learned how to:

- Create manual backups using tar.
- Compress backup archives.
- Schedule backups with Cron.
- Restore archived data.
- Verify backup integrity.
- Implement basic disaster recovery procedures.
- Improve Linux data protection practices.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1485 | Data Destruction |
| T1490 | Inhibit System Recovery |

---

## CIS Control Mapping

**CIS Control 11 – Data Recovery**

This lab demonstrates how organizations protect critical data by implementing backup procedures, validating recovery processes, and maintaining recoverable copies of important information.

---

## Skills Demonstrated

- Linux Administration
- Backup & Recovery
- Disaster Recovery
- tar
- Cron Jobs
- Data Integrity Verification
- System Administration
- Business Continuity
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
