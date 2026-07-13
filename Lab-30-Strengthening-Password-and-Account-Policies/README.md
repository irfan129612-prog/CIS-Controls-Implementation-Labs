# Lab 30: Strengthening Password & Account Policies

## Lab Overview

Strong password and account policies are essential security controls that help prevent unauthorized access and reduce the risk of credential-based attacks.

In this lab, we review existing password policies on Windows and Linux systems, strengthen security configurations, enforce password complexity requirements, configure password expiration settings, and test policy enforcement using user accounts.

This lab demonstrates practical identity and access management (IAM) security practices used by system administrators and cybersecurity professionals.

---

## Objectives

By completing this lab, you will learn:

- Review current password and account policies.
- Understand password security requirements.
- Configure stronger password policies.
- Implement password complexity rules.
- Configure password expiration and rotation.
- Test password policy enforcement.
- Understand Windows Security Policy and Linux PAM configuration.

---

## Prerequisites

Required:

- Basic understanding of Windows and Linux systems.
- Administrative privileges.
- Access to a test machine.

Supported Platforms:

- Windows 10/11
- Linux Ubuntu/Debian

Required Knowledge:

- User account management.
- Basic command-line operations.

---

# Lab Environment

Operating Systems:

- Windows
- Linux Ubuntu


Security Components:

Windows:

- Local Security Policy
- User Account Management


Linux:

- PAM Authentication Framework
- pwquality Module
- chage Command

---

# Task 1: Review Current Password Policy

## Windows Password Policy Review

Open Local Security Policy:

Press:

Win + R


Run:

secpol.msc


Navigate to:

Account Policies

→ Password Policy


Review settings:

- Minimum Password Length.
- Password Complexity Requirements.
- Password History.
- Maximum Password Age.
- Minimum Password Age.


Document current security settings.

---

## Linux Password Policy Review

Check user password information:

sudo chage -l username


Review:

- Password expiration.
- Last password change.
- Password aging settings.


Check password complexity configuration:

cat /etc/pam.d/common-password


Review:

- Password length requirements.
- Complexity rules.
- Authentication modules.

---

# Task 2: Strengthen Password Policy

# Windows Configuration

Open:

Local Security Policy

Navigate:

Account Policies

→ Password Policy


Configure:

Minimum Password Length:

12 characters


Enable:

Password must meet complexity requirements


Configure password rotation:

Maximum Password Age:

90 days


Recommended settings:

- Use password history.
- Prevent password reuse.
- Enforce strong passwords.

---

# Linux Configuration

## Modify Password Complexity

Open configuration file:

sudo nano /etc/security/pwquality.conf


Add or modify:

minlen=12

dcredit=-1

ucredit=-1

lcredit=-1

ocredit=-1


Explanation:

minlen:

Minimum password length.


dcredit:

Require numbers.


ucredit:

Require uppercase letters.


lcredit:

Require lowercase letters.


ocredit:

Require special characters.

---

## Configure Password Expiration

Set password aging policy:

sudo chage -M 90 -m 7 -W 7 username


Options:

-M 90

Maximum password age of 90 days.


-m 7

Minimum days before password change.


-W 7

Warning period before expiration.

---

# Task 3: Test Password Policy Enforcement

## Windows Testing

Create Test User:

Navigate:

Computer Management

→ Local Users and Groups

→ Users


Create a new user account.


Test:

Attempt weak passwords.

Example:

password123


Expected:

Password should be rejected.


Create a compliant password:

- Minimum 12 characters.
- Uppercase letter.
- Lowercase letter.
- Number.
- Special character.


Verify successful login.

---

## Linux Testing

Create Test User:

sudo adduser testuser


Set password:

sudo passwd testuser


Test:

Try weak password.

Expected:

System should reject non-compliant passwords.


Create strong password according to policy.

Verify successful authentication.

---

# Password Security Best Practices

Recommended password controls:

- Minimum 12 characters.
- Enable complexity requirements.
- Use password history.
- Configure password expiration.
- Disable weak passwords.
- Use MFA where possible.
- Avoid password reuse.

---

# Security Importance

Strong password policies help organizations:

- Prevent brute-force attacks.
- Reduce account compromise.
- Protect sensitive information.
- Improve authentication security.
- Meet compliance requirements.

---

# Lab Outcome

After completing this lab, you should be able to:

- Review password policies.
- Configure secure password requirements.
- Manage password expiration.
- Test security controls.
- Understand Windows and Linux authentication security.

---

# Conclusion

In this lab, we strengthened password and account policies on Windows and Linux systems.

We reviewed existing configurations, implemented stronger security requirements, and tested policy enforcement using user accounts.

Password security is a fundamental component of cybersecurity and plays an important role in protecting systems against unauthorized access.

---

# Key Concepts

Local Security Policy

Windows tool used to manage security settings.


PAM (Pluggable Authentication Modules)

Linux framework responsible for authentication.


Password Complexity

Rules that require stronger password combinations.


Password Expiration

Controls how frequently passwords must be changed.


---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
