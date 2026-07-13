# Lab 28: Data in Transit Encryption

## Lab Overview

Data in transit encryption protects information while it is being transferred between systems, networks, and users.

Without encryption, attackers can intercept sensitive information through techniques such as packet sniffing and man-in-the-middle attacks.

In this lab, we configure HTTPS on a web server using SSL/TLS encryption, generate a self-signed certificate using OpenSSL, enable secure web communication, and disable insecure HTTP access.

---

## Objectives

By completing this lab, you will learn:

- Understand the importance of encrypting data during transmission.
- Configure HTTPS on a web server.
- Enable SSL/TLS encryption.
- Generate and install a self-signed SSL certificate.
- Verify secure HTTPS communication.
- Disable or redirect insecure HTTP traffic.

---

## Prerequisites

Required:

- Basic understanding of:
  - Web servers.
  - Networking concepts.
  - HTTP and HTTPS protocols.

Access Requirements:

- Linux server with root privileges.
- Installed web server:
  - Apache
  - Nginx
  - IIS

Required Tools:

- OpenSSL
- Linux Terminal

---

# Lab Environment

Operating System:

- Ubuntu Linux

Web Servers:

- Apache2
- Nginx


Security Technologies:

- SSL/TLS
- HTTPS
- OpenSSL Certificates

---

# Task 1: Enable TLS/SSL on Web Server

## Install Required Packages

## Apache Installation

Update packages:

sudo apt-get update


Install Apache:

sudo apt-get install apache2 apache2-utils


Enable SSL module:

sudo a2enmod ssl


---

## Nginx Installation

Update packages:

sudo apt-get update


Install Nginx:

sudo apt-get install nginx


---

# Task 2: Configure Web Server for HTTPS

## Apache HTTPS Configuration

Navigate to:

cd /etc/apache2/sites-available/


Edit SSL configuration:

sudo nano default-ssl.conf


Configure:

<VirtualHost _default_:443>

ServerAdmin webmaster@localhost

ServerName yourdomain.com

DocumentRoot /var/www/html

SSLEngine on

SSLCertificateFile /etc/ssl/certs/server.crt

SSLCertificateKeyFile /etc/ssl/private/server.key

</VirtualHost>


Enable SSL site:

sudo a2ensite default-ssl.conf


---

## Nginx HTTPS Configuration

Navigate to:

cd /etc/nginx/sites-available/


Edit configuration file:

sudo nano default


Add HTTPS configuration:

server {

listen 443 ssl;

server_name yourdomain.com;

ssl_certificate /etc/ssl/certs/server.crt;

ssl_certificate_key /etc/ssl/private/server.key;


location / {

root /var/www/html;

index index.html index.htm;

}

}


---

# Task 3: Generate Self-Signed SSL Certificate

Use OpenSSL:

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/server.key \
-out /etc/ssl/certs/server.crt


Provide certificate information:

- Country.
- State.
- City.
- Organization.
- Common Name (Domain Name).

The certificate will be valid for 365 days.

---

# Task 4: Restart Web Server

## Apache

Restart service:

sudo systemctl restart apache2


Check status:

sudo systemctl status apache2


---

## Nginx

Restart service:

sudo systemctl restart nginx


Check status:

sudo systemctl status nginx


---

# Task 5: Verify HTTPS Functionality

Open browser:

https://yourdomain.com


Expected Result:

- Website loads using HTTPS.
- Browser shows secure connection.
- SSL certificate is detected.

Note:

Self-signed certificates may display a browser warning because they are not issued by a public Certificate Authority.

---

# Task 6: Disable HTTP Access

HTTP uses port 80 and does not encrypt traffic.

Security improvement:

- Disable direct HTTP access.
- Redirect HTTP traffic to HTTPS.

---

## Nginx HTTP Redirect

Example:

server {

listen 80;

server_name yourdomain.com;

return 301 https://$server_name$request_uri;

}


---

## Apache HTTP Redirect

Enable rewrite module:

sudo a2enmod rewrite


Add redirect rule:

RewriteEngine On

RewriteCond %{HTTPS} off

RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]


---

# Data in Transit Security Workflow

The encryption process:

1. Install web server.
2. Enable SSL/TLS support.
3. Generate certificate.
4. Configure HTTPS.
5. Restart services.
6. Test secure connection.
7. Disable insecure HTTP traffic.

---

# Security Importance

Data in transit encryption helps organizations:

- Protect sensitive communication.
- Prevent packet interception.
- Reduce man-in-the-middle attacks.
- Secure web applications.
- Maintain confidentiality and integrity.

---

# Lab Outcome

After completing this lab, you should be able to:

- Configure HTTPS on Apache/Nginx.
- Generate SSL certificates.
- Enable TLS encryption.
- Test secure web communication.
- Redirect HTTP traffic to HTTPS.

---

# Conclusion

In this lab, we successfully implemented data in transit encryption by configuring HTTPS with SSL/TLS.

We generated a self-signed certificate, secured web server communication, and disabled insecure HTTP access.

TLS encryption is a fundamental security practice used to protect modern web applications and network communication.

---

# Author

Irfan Ahmed

Cyber Security Lab Portfolio
