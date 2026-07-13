# Lab 01 – Hardware Asset Inventory using Nmap

## 📌 Overview

This lab demonstrates the implementation of **CIS Controls v8 – Control 1: Inventory and Control of Enterprise Assets**. The objective is to create a hardware asset inventory and validate it using the **Nmap** network scanning tool.

---

## 🎯 Objectives

* Understand the importance of maintaining a hardware asset inventory.
* Create a list of enterprise assets.
* Perform a network discovery scan using Nmap.
* Validate the inventory against discovered network devices.
* Document findings for security and compliance purposes.

---

## 🛠️ Lab Environment

| Component        | Details        |
| ---------------- | -------------- |
| Operating System | Ubuntu Linux   |
| Platform         | AWS EC2        |
| Tool             | Nmap 7.94SVN   |
| Network Range    | 172.31.10.0/24 |

---

## 📦 Hardware Asset Inventory

| Asset ID | Asset Type          | Hostname                      | IP Address    | Location | Owner       | Status |
| -------- | ------------------- | ----------------------------- | ------------- | -------- | ----------- | ------ |
| EC2-001  | Ubuntu EC2 Instance | ip-172-31-10-33.ec2.internal  | 172.31.10.33  | AWS VPC  | Irfan Ahmed | Active |
| EC2-002  | EC2 Instance        | ip-172-31-10-155.ec2.internal | 172.31.10.155 | AWS VPC  | AWS Lab     | Active |
| EC2-003  | EC2 Instance        | ip-172-31-10-177.ec2.internal | 172.31.10.177 | AWS VPC  | AWS Lab     | Active |
| EC2-004  | EC2 Instance        | ip-172-31-10-191.ec2.internal | 172.31.10.191 | AWS VPC  | AWS Lab     | Active |
| GW-001   | Network Gateway     | ip-172-31-10-254.ec2.internal | 172.31.10.254 | AWS VPC  | AWS Network | Active |

---

## ⚙️ Commands Used

### Update Ubuntu

```bash
sudo apt update
```

### Install Nmap

```bash
sudo apt install nmap
```

### Verify Installation

```bash
nmap --version
```

### Display Local IP Address

```bash
hostname -I
```

### Perform Network Discovery Scan

```bash
nmap -sn 172.31.10.0/24
```

---

## 📄 Scan Result

```
Starting Nmap 7.94SVN

Nmap scan report for ip-172-31-10-33.ec2.internal (172.31.10.33)
Host is up.

Nmap scan report for ip-172-31-10-155.ec2.internal (172.31.10.155)
Host is up.

Nmap scan report for ip-172-31-10-177.ec2.internal (172.31.10.177)
Host is up.

Nmap scan report for ip-172-31-10-191.ec2.internal (172.31.10.191)
Host is up.

Nmap scan report for ip-172-31-10-254.ec2.internal (172.31.10.254)
Host is up.

Nmap done: 256 IP addresses (5 hosts up) scanned in 5.01 seconds.
```

---

## ✅ Validation

| Item                       | Result |
| -------------------------- | ------ |
| Total Assets in Inventory  | 5      |
| Active Hosts Detected      | 5      |
| Inventory Matches Scan     | Yes    |
| Unauthorized Devices Found | No     |

The Nmap scan successfully detected all expected devices within the subnet. No unknown or unauthorized hosts were identified.

---

## 🔍 Findings

* Successfully installed and verified Nmap.
* Conducted a network discovery scan.
* Identified five active hosts on the subnet.
* Created and validated a hardware asset inventory.
* Confirmed that all expected assets were accounted for.

---

## 🎓 Learning Outcomes

After completing this lab, I learned how to:

* Maintain an enterprise hardware inventory.
* Discover network devices using Nmap.
* Validate inventory records against live network data.
* Apply CIS Controls v8 Control 1 in a practical environment.
* Improve asset visibility for cybersecurity operations.

---

## 📁 Repository Structure

```
Lab-01-Hardware-Asset-Inventory/
│
├── README.md
├── assets/
│   ├── hardware_inventory.xlsx
│   ├── hardware_inventory.csv
│   └── screenshots/
│       ├── 01-ip-address.png
│       ├── 02-nmap-version.png
│       ├── 03-network-scan.png
│       └── 04-validation.png
│
└── reports/
    └── Hardware_Inventory_Report.pdf
```

---

## 📚 CIS Control Mapping

**CIS Controls v8**

**Control 1 – Inventory and Control of Enterprise Assets**

This control focuses on identifying, tracking, and managing enterprise assets to reduce the attack surface and ensure that only authorized devices are connected to the network.

---

## 👨‍💻 Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Detection | Industrial Cybersecurity

---

⭐ If you found this repository helpful, consider giving it a star.
