# Lab 29: Verifying Backups

## Lab Overview

Backup verification is an essential process in data management and disaster recovery. Creating backups alone is not enough; organizations must regularly verify that backups can be successfully restored and that stored data remains complete and accurate.

In this lab, we restore a backup archive, compare restored files with original files, verify data integrity using checksums, and identify possible backup restoration issues.

This lab demonstrates practical backup validation techniques used by system administrators and cybersecurity professionals.

---

## Objectives

By completing this lab, you will learn:

- Understand the importance of backup verification.
- Restore backup archives using Linux tools.
- Validate successful restore operations.
- Compare restored data with original files.
- Verify file integrity using checksums.
- Identify and troubleshoot backup issues.

---

## Prerequisites

Required:

- Basic Linux command-line knowledge.
- Access to Linux system.
- Required permissions for file operations.
- Existing backup archive.

Backup tools:

- tar
- rsync
- Bacula

Example backup file:

backup.tar.gz

---

# Lab Environment

Operating System:

- Linux Ubuntu / Debian

Tools Used:

- tar
- diff
- sha256sum
- Linux Terminal

---

# Task 1: Restore the Backup

## Prepare Backup Archive

Ensure the backup file is available:

backup.tar.gz


Create restore directory:

sudo mkdir -p /restored_backup_directory/


---

## Extract Backup Archive

Restore backup using tar:

tar -xzvf backup.tar.gz -C /restored_backup_directory/


Command explanation:

-x

Extract files from archive.


-z

Process gzip compressed archive.


-v

Display extracted files.


-f

Specify archive file.


---

## Verify Restore Process

List restored files:

ls -l /restored_backup_directory/


Confirm:

- Files are extracted.
- No restore errors occurred.
- Directory structure is correct.

---

# Task 2: Compare Restored Files with Original

## Compare Directories Using diff

Compare original and restored directories:

diff -r /original_directory/ /restored_backup_directory/


Command explanation:

-r

Recursively compare directories and files.


---

## Analyze Comparison Results

Output shows differences between:

Original files

and

Restored files


Results:

No output:

Files are identical.


Output displayed:

Differences exist and require investigation.

---

# Task 3: Verify File Integrity

## Generate Checksums

Use SHA256 checksum:

sha256sum /original_directory/file1.txt /restored_backup_directory/file1.txt


Compare checksum values.

Expected Result:

Matching hashes indicate:

- File integrity maintained.
- Backup restoration successful.

Different hashes indicate:

- File corruption.
- Incomplete backup.
- Data modification.

---

# Troubleshooting Backup Issues

Common backup restoration problems:

## Missing Files

Possible causes:

- Incomplete backup.
- Incorrect archive selection.
- Permission issues.


Solution:

- Restore backup again.
- Verify backup source.

---

## Corrupted Files

Possible causes:

- Storage failure.
- Damaged archive.
- Interrupted backup process.


Solution:

- Check backup logs.
- Verify storage health.
- Create a new backup.

---

## Permission Problems

Possible solution:

Use correct ownership and permissions:

sudo chown -R user:user /restored_backup_directory/


---

# Backup Verification Workflow

The backup validation process:

1. Create backup.
2. Store backup securely.
3. Restore backup in test environment.
4. Compare restored files.
5. Verify file integrity.
6. Document issues.
7. Improve backup strategy.

---

# Security Importance

Backup verification helps organizations:

- Ensure reliable disaster recovery.
- Prevent data loss.
- Validate backup systems.
- Maintain business continuity.
- Recover quickly from incidents.

---

# Lab Outcome

After completing this lab, you should be able to:

- Restore backup archives.
- Validate restored data.
- Compare files using diff.
- Verify integrity using SHA256 hashes.
- Troubleshoot backup restoration issues.

---

# Conclusion

In this lab, we successfully verified backup integrity by restoring archived data, comparing restored files with original files, and validating file consistency using checksums.

Regular backup verification ensures that recovery procedures work correctly when data restoration is required during failures, cyber incidents, or disasters.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
