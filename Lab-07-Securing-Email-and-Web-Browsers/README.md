# Lab 07 – Securing Email & Web Browsers

## Overview

This lab demonstrates how to improve endpoint security by hardening email clients and web browsers against common web-based threats. The lab focuses on enabling phishing protection in Thunderbird, installing browser security extensions in Firefox, reviewing browser privacy settings, and documenting security improvements to reduce the risk of phishing, malware, malicious scripts, and online tracking.

---

## Objectives

- Secure an email client against phishing attacks.
- Install browser security extensions.
- Enable browser privacy protections.
- Review and modify insecure default browser settings.
- Improve user awareness of browser and email security.

---

## Lab Environment

| Component | Details |
|----------|---------|
| Operating System | Ubuntu 24.04 LTS |
| Platform | AWS EC2 / Virtual Machine |
| Email Client | Mozilla Thunderbird |
| Web Browser | Mozilla Firefox |
| Security Extensions | uBlock Origin, NoScript |

---

## Task 1 – Secure the Email Client

Mozilla Thunderbird was installed and configured to improve email security.

The following security features were enabled:

- Adaptive Junk Mail Controls
- Junk Mail Header Detection
- Phishing Protection
- Suspicious Email Detection

A test phishing email was reviewed to verify that Thunderbird correctly identified suspicious content.

---

## Task 2 – Secure the Web Browser

Mozilla Firefox was installed and configured with security-focused browser extensions.

The following browser add-ons were installed:

- uBlock Origin
- NoScript

These extensions help:

- Block malicious advertisements.
- Prevent execution of unauthorized JavaScript.
- Reduce drive-by download attacks.
- Improve browsing privacy.

---

## Task 3 – Browser Privacy & Security Configuration

Firefox security settings were reviewed and updated.

The following settings were enabled:

| Setting | Status |
|----------|--------|
| Enhanced Tracking Protection | Strict |
| Block Dangerous & Deceptive Content | Enabled |
| HTTPS-Only Mode | Enabled |
| DNS over HTTPS | Enabled (Optional) |
| Block Fingerprinting | Enabled |
| Block Cryptominers | Enabled |

---

## Browser Hardening Checklist

| Security Setting | Status |
|------------------|--------|
| Thunderbird Installed | ✅ |
| Junk Mail Controls Enabled | ✅ |
| Phishing Protection Enabled | ✅ |
| Firefox Installed | ✅ |
| uBlock Origin Installed | ✅ |
| NoScript Installed | ✅ |
| Tracking Protection Enabled | ✅ |
| Fingerprinting Protection Enabled | ✅ |
| Browser Privacy Reviewed | ✅ |

---

## Security Benefits

Securing email clients and browsers helps organizations:

- Prevent phishing attacks.
- Block malicious websites.
- Stop malicious JavaScript execution.
- Reduce browser tracking.
- Protect sensitive information.
- Improve endpoint security.


## Learning Outcomes

After completing this lab, I learned how to:

- Configure email phishing protection.
- Secure Mozilla Thunderbird.
- Install Firefox security extensions.
- Harden browser privacy settings.
- Reduce browser attack surface.
- Improve endpoint web security.
- Apply secure browsing best practices.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1566 | Phishing |
| T1189 | Drive-by Compromise |
| T1204 | User Execution |

---

## CIS Control Mapping

**CIS Control 9 – Email and Web Browser Protections**

This lab demonstrates how organizations can improve endpoint security by implementing phishing protection, browser hardening, and secure browsing practices to reduce exposure to web-based attacks.

---

## Skills Demonstrated

- Email Security
- Mozilla Thunderbird
- Mozilla Firefox
- Browser Hardening
- Phishing Protection
- Web Security
- Endpoint Security
- Security Awareness
- Cybersecurity Documentation

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
