# Lab 04 – Controlled Use of Administrative Privileges

## Overview

This lab demonstrates the implementation of controlled administrative privilege management on a Linux system. The objective is to identify users with administrative privileges, review privilege assignments, remove unnecessary administrative access, and verify system functionality after making changes.

---

## Objectives

- Identify users with administrative privileges.
- Review sudo configuration.
- Remove or downgrade unnecessary administrative accounts.
- Verify privilege changes.
- Document modifications.
- Ensure system stability after changes.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 |
| User Management | sudo |
| Configuration File | /etc/sudoers |

---

## Administrative Privilege Enumeration

The sudo group was examined to identify users with administrative privileges.

The sudoers configuration was reviewed to verify privilege assignments.

---

## Administrative Privilege Review

Administrative privileges should only be assigned to users who require elevated permissions for system administration tasks.

The Principle of Least Privilege (PoLP) should always be followed to reduce the attack surface.

---

## Administrative Privilege Management

Administrative access can be controlled by:

- Removing users from the sudo group.
- Removing users from the wheel group (RPM-based systems).
- Deleting unnecessary user accounts.
- Reviewing sudoers configuration.

---

## Verification

After modifying administrative privileges, the following checks were performed:

- Verified sudo group membership.
- Confirmed sudoers configuration.
- Reviewed authentication logs.
- Confirmed normal system operation.

---

## Change Log

Example:

| Date | User | Action | Reason |
|------|------|--------|--------|
| YYYY-MM-DD | testuser | Removed from sudo group | Least Privilege Policy |

---

## Security Benefits

Controlled administrative privileges help organizations:

- Reduce insider threats.
- Prevent privilege escalation.
- Limit unauthorized administrative access.
- Improve audit readiness.
- Support compliance requirements.
- Enforce the Principle of Least Privilege (PoLP).

---

---

## Learning Outcomes

After completing this lab, I learned how to:

- Enumerate administrative users.
- Review sudo permissions.
- Modify user privileges securely.
- Apply the Principle of Least Privilege.
- Audit administrative accounts.
- Verify privilege changes.

---

## CIS Control Mapping

**CIS Control 5 – Account Management**

This lab demonstrates how organizations manage privileged accounts, regularly review administrative access, and enforce least privilege to reduce security risks.

---

## Skills Demonstrated

- Linux Administration
- User Management
- Sudo Administration
- Privilege Management
- Principle of Least Privilege (PoLP)
- Security Auditing
- Access Control
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Detection | Industrial Cybersecurity

---

⭐ If you found this repository useful, consider giving it a star.
