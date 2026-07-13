# Lab 14 – Controlled Access Based on Need to Know

## Overview

This lab demonstrates the implementation of Role-Based Access Control (RBAC) using Linux file permissions. The objective is to ensure that only authorized users can access sensitive information by assigning permissions based on the principle of least privilege and need-to-know. The lab includes creating users and groups, assigning ownership, configuring permissions, and validating authorized and unauthorized access.

---

## Objectives

- Understand the Need-to-Know security principle.
- Create users and groups.
- Assign directory ownership.
- Configure Linux file permissions.
- Verify authorized and unauthorized access.
- Implement basic Role-Based Access Control (RBAC).

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Access Control | Linux File Permissions |
| Commands Used | chmod, chown, useradd, usermod, groupadd |

---

## Task 1 – Create a Secure Directory

A directory named **Finance** was created to store sensitive organizational data.

The directory represents confidential information that should only be accessible to authorized personnel.

---

## Task 2 – Configure User and Group Access

A dedicated user and group were created for finance operations.

The Finance directory ownership was assigned to the finance group.

Permissions were configured so that:

- Owner has Full Access
- Finance Group has Read/Write/Execute Access
- Other Users have No Access

Directory permissions:

```
770
```

This ensures only authorized users can access sensitive information.

---

## Task 3 – Validate Unauthorized Access

A non-authorized user attempted to access the Finance directory.

The system correctly denied access with a **Permission denied** message.

This confirms that unauthorized users cannot access protected resources.

---

## Task 4 – Validate Authorized Access

The authorized finance user successfully accessed the Finance directory.

The user was able to:

- View files
- Create files
- Modify files
- Delete files (if permitted)

This verifies that access controls function correctly.

---

## Findings

- Successfully created a protected directory.
- Created dedicated users and groups.
- Configured Linux ownership.
- Applied least privilege permissions.
- Prevented unauthorized access.
- Verified authorized user functionality.

---

## Security Benefits

Controlled access provides several security advantages:

- Protects confidential data.
- Implements Least Privilege.
- Enforces Need-to-Know access.
- Prevents unauthorized disclosure.
- Supports regulatory compliance.
- Improves access accountability.

---

## Repository Structure



## Learning Outcomes

After completing this lab, I learned how to:

- Implement Role-Based Access Control (RBAC).
- Create Linux users and groups.
- Configure ownership using chown.
- Manage permissions using chmod.
- Restrict unauthorized access.
- Apply the Principle of Least Privilege.
- Secure sensitive directories.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1078 | Valid Accounts |
| T1087 | Account Discovery |
| T1222 | File and Directory Permissions Modification |

---

## CIS Control Mapping

**CIS Control 6 – Access Control Management**

This lab demonstrates how organizations enforce access restrictions by implementing user/group permissions and granting access only to authorized personnel based on the Need-to-Know and Least Privilege principles.

---

## Skills Demonstrated

- Linux Administration
- Access Control
- RBAC
- Least Privilege
- Need-to-Know Principle
- Linux Permissions
- User Management
- Group Management
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
