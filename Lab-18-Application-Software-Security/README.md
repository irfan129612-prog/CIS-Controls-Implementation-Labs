# Lab 18 – Application Software Security

## Overview

This lab demonstrates the identification and mitigation of common web application vulnerabilities using an intentionally vulnerable application (DVWA). It also covers static code analysis with ESLint and secure coding practices to prevent SQL Injection (SQLi) and Cross-Site Scripting (XSS).

---

## Objectives

- Understand common web application vulnerabilities.
- Identify SQL Injection and Cross-Site Scripting (XSS).
- Deploy and use Damn Vulnerable Web Application (DVWA).
- Perform static code analysis using ESLint.
- Apply secure coding practices.
- Document remediation techniques.

---

## Lab Environment

| Component | Details |
|-----------|---------|
| OS | Ubuntu 24.04 LTS |
| Vulnerable Application | DVWA (Damn Vulnerable Web Application) |
| Container Platform | Docker |
| Static Analysis Tool | ESLint |
| Browser | Firefox / Chrome |

---

## Task 1 – Deploy DVWA

Docker was used to deploy the Damn Vulnerable Web Application.

### Steps

- Pulled the DVWA Docker image.
- Started the container.
- Accessed the application through a web browser.
- Configured the database.
- Logged into DVWA.

---

## Task 2 – Identify Common Vulnerabilities

### SQL Injection (SQLi)

The SQL Injection module was tested by submitting malicious SQL input.

Example Payload:

```sql
1' OR '1'='1
```

Observation:

- The application accepted unsanitized input.
- Database records were returned without proper authentication.
- Demonstrated how SQL Injection bypasses intended query logic.

---

### Cross-Site Scripting (Reflected XSS)

The reflected XSS module was tested.

Example Payload:

```html
<script>alert('XSS Vulnerability!')</script>
```

Observation:

- JavaScript executed inside the browser.
- User input was reflected without sanitization.
- Demonstrated client-side code execution.

---

## Task 3 – Static Code Analysis

ESLint was installed and executed.

Purpose:

- Detect coding errors.
- Improve JavaScript quality.
- Identify insecure coding patterns.

Example command:

```bash
eslint vulnerableScript.js
```

ESLint highlighted code quality issues that may contribute to security vulnerabilities.

---

## Task 4 – Secure Coding Practices

### SQL Injection Prevention

Instead of concatenating user input into SQL queries, parameterized queries were used.

Example:

```javascript
connection.query(
    'SELECT * FROM users WHERE id = ?',
    [userId],
    function(error, results){
        // Process results
    }
);
```

Benefits:

- Prevents SQL Injection.
- Separates code from data.
- Improves application security.

---

### XSS Prevention

User input was sanitized using DOMPurify.

Example:

```javascript
const clean = DOMPurify.sanitize(userInput);
```

Benefits:

- Removes malicious HTML.
- Prevents JavaScript execution.
- Protects users from reflected and stored XSS.

---

## Findings

- Successfully deployed DVWA.
- Demonstrated SQL Injection.
- Demonstrated Reflected XSS.
- Performed static analysis with ESLint.
- Implemented secure coding practices.
- Learned mitigation techniques against common web vulnerabilities.

---

## Security Best Practices

- Use parameterized SQL queries.
- Validate all user input.
- Sanitize HTML before rendering.
- Apply Content Security Policy (CSP).
- Use HTTPS.
- Keep frameworks updated.
- Perform regular code reviews.
- Use static analysis during development.

---

## MITRE ATT&CK Mapping

| Technique | Description |
|-----------|-------------|
| T1190 | Exploit Public-Facing Application |
| T1059.007 | JavaScript Execution |
| T1505 | Server Software Component |

---

## OWASP Top 10 Mapping

- A03 – Injection
- A03 – SQL Injection
- A03 – Cross-Site Scripting (XSS)
- A05 – Security Misconfiguration
- A08 – Software and Data Integrity Failures

---

## CIS Control Mapping

**CIS Control 16 – Application Software Security**

This lab demonstrates secure application development by identifying common vulnerabilities, analyzing code quality, and implementing secure coding practices.

---

## Skills Demonstrated

- Docker
- DVWA
- SQL Injection
- Cross-Site Scripting
- Static Code Analysis
- ESLint
- Secure Coding
- OWASP Top 10
- Web Application Security
- Application Hardening

---

## Author

**Irfan Ahmed**

Cybersecurity | SOC Analyst | Linux | SIEM | Threat Hunting | Detection Engineering

---

⭐ If you found this repository useful, consider giving it a star.
