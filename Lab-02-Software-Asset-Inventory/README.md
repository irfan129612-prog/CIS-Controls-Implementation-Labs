# Lab 02 – Software Asset Inventory

## 📌 Overview

This lab demonstrates the implementation of **CIS Controls v8 – Control 2: Inventory and Control of Software Assets**. The objective was to identify installed software on an Ubuntu Linux system, export the inventory to a CSV file, and analyze the installed packages to identify any unknown or end-of-life (EOL) software.

---

## 🎯 Objectives

* Identify installed software on a Linux system.
* Export the software inventory to a CSV file.
* Analyze installed packages.
* Identify unknown or end-of-life software.
* Practice software asset management using open-source tools.

---

## 🛠️ Lab Environment

| Component        | Details      |
| ---------------- | ------------ |
| Platform         | AWS EC2      |
| Operating System | Ubuntu Linux |
| Package Manager  | dpkg         |
| Output Format    | CSV          |

---

## 📋 Lab Tasks

### Task 1 – Inventory Installed Software

List all installed software packages.

```bash
dpkg-query -W -f='${binary:Package},${Version},${Maintainer}\n'
```

---

### Task 2 – Export Software Inventory

Export the installed software inventory to a CSV file.

```bash
dpkg-query -W -f='${binary:Package},${Version},${Maintainer}\n' > installed_software.csv
```

---

### Task 3 – Verify Export

Confirm that the CSV file has been created successfully.

```bash
ls -lh installed_software.csv
```

View the first few entries.

```bash
head installed_software.csv
```

Count the total installed packages.

```bash
dpkg-query -W | wc -l
```

---

## 📊 Sample Software Inventory

| Package                 | Version           | Maintainer        | Status      |
| ----------------------- | ----------------- | ----------------- | ----------- |
| accountsservice         | 23.13.9-2ubuntu6  | Ubuntu Developers | ✅ Supported |
| acl                     | 2.3.2-1build1.1   | Ubuntu Developers | ✅ Supported |
| acpid                   | 2.0.34-1ubuntu2   | Ubuntu Developers | ✅ Supported |
| adduser                 | 3.137ubuntu1      | Ubuntu Developers | ✅ Supported |
| adwaita-icon-theme      | 46.0-1            | Ubuntu Developers | ✅ Supported |
| alsa-utils              | 1.2.9-1ubuntu5    | Ubuntu Developers | ✅ Supported |
| amazon-cloudwatch-agent | 1.300062.0b1304-1 | Amazon.com, Inc.  | ✅ Supported |

---

## 🔍 Software Analysis

The exported software inventory was reviewed to identify unauthorized or unsupported applications.

### Findings

* Successfully generated a complete software inventory.
* Exported installed software to a CSV file.
* Verified the inventory using Linux command-line tools.
* All reviewed software packages were maintained by trusted vendors.
* No unknown software was identified.
* No end-of-life software was found during the assessment.

---

## ⚠️ Security Importance

Maintaining an accurate software inventory helps organizations:

* Detect unauthorized software installations.
* Identify outdated and unsupported applications.
* Improve vulnerability management.
* Support software compliance requirements.
* Reduce the organization's attack surface.

---

```

---

## 🎓 Learning Outcomes

After completing this lab, I gained practical experience in:

* Linux software inventory management.
* Using the `dpkg-query` command.
* Exporting software inventories to CSV format.
* Reviewing installed software for security purposes.
* Applying **CIS Controls v8 – Control 2** in a practical environment.

---

## 📚 CIS Control Mapping

**CIS Controls v8**

**Control 2 – Inventory and Control of Software Assets**

This control ensures that organizations maintain an accurate inventory of authorized software, helping to detect unauthorized applications, reduce security risks, and improve system compliance.

---

## 🏆 Skills Demonstrated

* Linux Administration
* Ubuntu Package Management
* Software Asset Management
* Asset Inventory
* Security Compliance
* Command Line Operations
* Cybersecurity Documentation
* CIS Controls v8

---

## 👨‍💻 Author

**Irfan Ahmed**

**Cybersecurity | SOC Analyst | Linux | SIEM | Threat Detection | Industrial Cybersecurity**

---

If you found this project useful, feel free to ⭐ this repository.
