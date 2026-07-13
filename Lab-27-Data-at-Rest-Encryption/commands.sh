#!/bin/bash

# ==========================================
# Lab 27: Data at Rest Encryption
# Commands File
# ==========================================

echo "Starting Data at Rest Encryption Lab"

echo ""
echo "=========================================="
echo "1. Linux LUKS Encryption Setup"
echo "=========================================="


echo "Update package repository"

sudo apt-get update


echo ""
echo "Install cryptsetup package"

sudo apt-get install cryptsetup -y


echo ""
echo "=========================================="
echo "2. Identify Available Disks and Partitions"
echo "=========================================="


lsblk


echo ""
echo "Select the partition to encrypt"
echo "Example: /dev/sdb1"


echo ""
echo "=========================================="
echo "3. Create LUKS Encryption Container"
echo "=========================================="


# Replace /dev/sdXn with your target partition

echo "Command:"
echo "sudo cryptsetup luksFormat /dev/sdXn"


# Example:
# sudo cryptsetup luksFormat /dev/sdb1


echo ""
echo "Type YES to confirm and create encryption"
echo "Set a strong encryption passphrase"


echo ""
echo "=========================================="
echo "4. Open Encrypted Partition"
echo "=========================================="


echo "Command:"
echo "sudo cryptsetup open /dev/sdXn my_encrypted_partition"


# Example:
# sudo cryptsetup open /dev/sdb1 my_encrypted_partition


echo ""
echo "Encrypted device will appear at:"
echo "/dev/mapper/my_encrypted_partition"


echo ""
echo "=========================================="
echo "5. Create Filesystem"
echo "=========================================="


echo "Create EXT4 filesystem:"


echo "sudo mkfs.ext4 /dev/mapper/my_encrypted_partition"


# Example:
# sudo mkfs.ext4 /dev/mapper/my_encrypted_partition


echo ""
echo "=========================================="
echo "6. Mount Encrypted Partition"
echo "=========================================="


# Create mount directory

sudo mkdir -p /mnt


# Mount encrypted partition

echo "Command:"
echo "sudo mount /dev/mapper/my_encrypted_partition /mnt"


# Example:
# sudo mount /dev/mapper/my_encrypted_partition /mnt


echo ""
echo "=========================================="
echo "7. Verify Mounted Encryption"
echo "=========================================="


df -h


lsblk


echo ""
echo "=========================================="
echo "8. Unmount and Lock Encrypted Partition"
echo "=========================================="


echo "Unmount partition:"
echo "sudo umount /mnt"


echo "Close encrypted volume:"
echo "sudo cryptsetup close my_encrypted_partition"


echo ""
echo "=========================================="
echo "9. Check LUKS Information"
echo "=========================================="


echo "Command:"
echo "sudo cryptsetup luksDump /dev/sdXn"


echo ""
echo "=========================================="
echo "10. BitLocker Windows Commands"
echo "=========================================="


echo "Check BitLocker status:"
echo "manage-bde -status"


echo ""
echo "Enable BitLocker:"
echo "manage-bde -on C: -RecoveryPassword"


echo ""
echo "Get Recovery Key Information:"
echo "manage-bde -protectors -get C:"


echo ""
echo "=========================================="
echo "Data at Rest Encryption Lab Completed"
echo "Verify encryption keys and recovery process"
echo "=========================================="