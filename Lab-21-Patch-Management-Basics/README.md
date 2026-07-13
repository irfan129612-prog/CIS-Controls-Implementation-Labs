# Lab 21: Patch Management Basics

## Lab Overview

Patch management is the process of identifying, testing, installing, and maintaining software updates for operating systems and applications.

In this lab, we learn the fundamentals of patch management by checking available updates, applying security patches, documenting changes, rebooting systems when required, and validating system health after updates.

Patch management is a critical cybersecurity practice because outdated software can contain vulnerabilities that attackers may exploit.

---

## Objectives

By completing this lab, you will learn:

- Understand the importance of patch management.
- Check available updates on Windows and Linux systems.
- Apply pending updates using command-line tools.
- Document applied patches.
- Reboot systems after updates.
- Validate system stability after patch installation.
- Identify possible issues after system updates.

---

## Prerequisites

- Basic knowledge of operating systems.
- Familiarity with command-line interface.
- Access to:

  - Windows operating system.
  - Ubuntu Linux system using apt package manager.
  - CentOS/Red Hat Linux system using yum package manager.

---

# Lab Environment

Operating Systems:

- Windows 10/11
- Ubuntu Linux
- CentOS / Red Hat Enterprise Linux

Tools Used:

- Windows Update
- APT Package Manager
- YUM Package Manager
- Linux Terminal
- Windows Event Viewer
- System Logs

---

# Task 1: Checking Available Updates

## Windows Update

Steps:

1. Open Start Menu.
2. Open Settings.
3. Navigate to:

Update & Security → Windows Update

4. Click:

Check for updates

Windows will scan the system and display available patches.

---

## Ubuntu Linux Update Check

Open terminal:

Ctrl + Alt + T


Update package repository:

sudo apt update


Check available upgrades:

apt list --upgradable


---

## CentOS / Red Hat Update Check

Check available updates:

sudo yum check-update


---

# Task 2: Applying Pending Updates

## Windows

If updates are available:

1. Click Install Now.
2. Allow Windows to download and install patches.
3. Restart the system if required.

---

## Ubuntu Linux

Install available updates:

sudo apt upgrade -y


Document update information:

sudo apt list --upgradable >> updates_applied.log


View update log:

cat updates_applied.log


---

## CentOS / Red Hat

Install system updates:

sudo yum update -y


Save update details:

sudo yum list updates >> updates_applied.log


View log:

cat updates_applied.log


---

# Task 3: Reboot and Validate Updates

## Linux Reboot

Restart the system:

sudo reboot


---

## Check System Errors

Review kernel messages:

dmesg | grep -i error


---

## Windows Validation

After completing updates:

1. Open Event Viewer.
2. Navigate to:

Windows Logs → System

3. Review critical errors and warnings.

---

# Verify Installed Software Versions

Ubuntu:

apt list --installed


CentOS/RHEL:

yum list installed


---

# Patch Management Process

The patch management lifecycle includes:

1. Identify missing updates.
2. Review available patches.
3. Install approved updates.
4. Document changes.
5. Restart systems when required.
6. Verify system functionality.
7. Monitor logs for problems.

---

# Security Importance

Regular patch management helps organizations:

- Fix known security vulnerabilities.
- Reduce attack surface.
- Improve system performance.
- Maintain system stability.
- Support compliance requirements.
- Protect critical infrastructure.

---

# Lab Outcome

After completing this lab, you should be able to:

- Identify missing system updates.
- Apply patches safely.
- Maintain update documentation.
- Perform post-update validation.
- Understand the role of patch management in cybersecurity operations.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
