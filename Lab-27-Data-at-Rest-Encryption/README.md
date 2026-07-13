# Lab 27: Data at Rest Encryption

## Lab Overview

Data at rest encryption is a security mechanism used to protect stored information on hard drives, SSDs, and storage devices.

Encryption ensures that sensitive data remains protected even if a device is lost, stolen, or accessed by unauthorized users.

In this lab, we explore data encryption using:

- BitLocker on Windows.
- LUKS (Linux Unified Key Setup) on Linux.

We will encrypt test partitions, manage encryption keys, and verify that encrypted data cannot be accessed without proper authentication.

---

## Objectives

By completing this lab, you will learn:

- Understand the importance of data at rest encryption.
- Encrypt storage partitions on Windows and Linux.
- Configure BitLocker encryption.
- Configure LUKS disk encryption.
- Manage encryption passwords and recovery keys.
- Verify encrypted drive protection after reboot.
- Understand encryption key management practices.

---

## Prerequisites

Required:

- Basic knowledge of Windows and Linux operating systems.
- Administrator/root privileges.
- Spare disk or test partition available.
- Basic command-line knowledge.

Supported Systems:

- Windows 10/11
- Linux Ubuntu/Debian

---

# Lab Environment

Encryption Technologies:

Windows:

- BitLocker Drive Encryption


Linux:

- LUKS Encryption
- cryptsetup utility


Tools Used:

- Windows Control Panel
- Linux Terminal
- lsblk
- cryptsetup
- mkfs.ext4

---

# Task 1: Encrypt Partition Using BitLocker (Windows)

## Enable BitLocker

Steps:

1. Open Control Panel.
2. Navigate to:

System and Security

→ BitLocker Drive Encryption


3. Select the test partition.
4. Click:

Turn on BitLocker


---

## Configure Drive Unlock Method

Choose:

- Password authentication.

Create a strong encryption password.

Save the recovery key securely.

Recovery key is required if:

- Password is forgotten.
- Recovery mode is triggered.

---

## Encrypt Drive

Select:

Encrypt entire drive


Start encryption process.

Wait until encryption completes.

---

## Verify BitLocker Encryption

Restart the computer.

Confirm:

- Drive requests password.
- Data remains inaccessible without the encryption key.

---

# Task 2: Encrypt Partition Using LUKS (Linux)

## Install Required Packages

Update package repository:

sudo apt-get update


Install cryptsetup:

sudo apt-get install cryptsetup


---

# Identify Disk Partition

List available storage devices:

lsblk


Identify the partition to encrypt.

Example:

/dev/sdXn


---

# Create LUKS Encryption

Initialize encryption:

sudo cryptsetup luksFormat /dev/sdXn


Confirm by typing:

YES


Enter encryption passphrase.

Important:

Keep the passphrase secure because losing it will make encrypted data inaccessible.

---

# Open Encrypted Partition

Unlock encrypted partition:

sudo cryptsetup open /dev/sdXn my_encrypted_partition


Enter the encryption password.

---

# Create Filesystem

Create EXT4 filesystem:

sudo mkfs.ext4 /dev/mapper/my_encrypted_partition


---

# Mount Encrypted Partition

Create mount point:

sudo mkdir /mnt


Mount encrypted storage:

sudo mount /dev/mapper/my_encrypted_partition /mnt


Encrypted storage is now accessible.

---

# Verification

Restart the Linux system.

Check:

- Encrypted partition should remain locked.
- Data should not be accessible until unlocked.
- Correct passphrase should be required.

---

# Encryption Key Management Practices

Best practices:

- Use strong encryption passwords.
- Store recovery keys securely.
- Never share encryption keys publicly.
- Maintain backup recovery keys.
- Rotate keys according to security policies.
- Document encryption configuration.

---

# Data at Rest Encryption Workflow

Encryption lifecycle:

1. Identify sensitive data.
2. Select encryption technology.
3. Create encryption keys.
4. Encrypt storage device.
5. Securely manage keys.
6. Test recovery process.
7. Monitor encrypted systems.

---

# Security Importance

Data at rest encryption helps organizations:

- Protect confidential information.
- Prevent unauthorized data access.
- Secure lost or stolen devices.
- Meet compliance requirements.
- Protect customer and business data.

---

# Lab Outcome

After completing this lab, you should be able to:

- Enable BitLocker encryption.
- Configure LUKS disk encryption.
- Manage encryption credentials.
- Verify encrypted storage protection.
- Understand the importance of encryption at rest.

---

# Conclusion

In this lab, we successfully implemented data at rest encryption using BitLocker on Windows and LUKS on Linux.

Encryption provides an additional security layer by ensuring that stored data remains protected even when physical storage devices are compromised.

Understanding encryption technologies is an essential skill for cybersecurity professionals, system administrators, and security engineers.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
