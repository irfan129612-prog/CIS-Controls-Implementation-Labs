#!/bin/bash

# ==========================================
# Lab 28: Data in Transit Encryption
# Commands File
# ==========================================

echo "Starting Data in Transit Encryption Lab"

echo ""
echo "=========================================="
echo "1. Install Web Server Packages"
echo "=========================================="


# Update system packages

sudo apt-get update


echo ""
echo "Install Apache Web Server"

sudo apt-get install apache2 apache2-utils -y


echo ""
echo "Enable Apache SSL Module"

sudo a2enmod ssl


echo ""
echo "Install Nginx (Optional)"

# sudo apt-get install nginx -y


echo ""
echo "=========================================="
echo "2. Generate SSL/TLS Self-Signed Certificate"
echo "=========================================="


sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/server.key \
-out /etc/ssl/certs/server.crt


echo ""
echo "Certificate Generated:"
echo "/etc/ssl/private/server.key"
echo "/etc/ssl/certs/server.crt"


echo ""
echo "=========================================="
echo "3. Apache HTTPS Configuration"
echo "=========================================="


echo "Edit Apache SSL configuration:"
echo "sudo nano /etc/apache2/sites-available/default-ssl.conf"


echo ""
echo "Add SSL configuration:"
echo ""
echo "SSLEngine on"
echo "SSLCertificateFile /etc/ssl/certs/server.crt"
echo "SSLCertificateKeyFile /etc/ssl/private/server.key"


echo ""
echo "Enable SSL Site"

sudo a2ensite default-ssl.conf


echo ""
echo "=========================================="
echo "4. Restart Apache Service"
echo "=========================================="


sudo systemctl restart apache2


sudo systemctl status apache2


echo ""
echo "=========================================="
echo "5. Verify HTTPS Port"
echo "=========================================="


# Check listening ports

sudo ss -tulnp | grep :443


echo ""
echo "=========================================="
echo "6. Test SSL Certificate"
echo "=========================================="


openssl x509 -in /etc/ssl/certs/server.crt -text -noout


echo ""
echo "=========================================="
echo "7. Test HTTPS Connection"
echo "=========================================="


echo "Open browser:"
echo "https://yourdomain.com"


echo ""
echo "=========================================="
echo "8. Disable HTTP / Redirect HTTP to HTTPS"
echo "=========================================="


echo "Remove HTTP listener or configure redirect"


echo ""
echo "Apache Rewrite Example:"
echo ""
echo "RewriteEngine On"
echo "RewriteCond %{HTTPS} off"
echo "RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]"


echo ""
echo "=========================================="
echo "9. Nginx HTTPS Configuration Example"
echo "=========================================="


echo "Edit Nginx configuration:"
echo "sudo nano /etc/nginx/sites-available/default"


echo ""
echo "HTTPS Configuration:"
echo ""
echo "listen 443 ssl;"
echo "ssl_certificate /etc/ssl/certs/server.crt;"
echo "ssl_certificate_key /etc/ssl/private/server.key;"


echo ""
echo "Restart Nginx:"
echo "sudo systemctl restart nginx"


echo ""
echo "=========================================="
echo "Data in Transit Encryption Lab Completed"
echo "HTTPS Enabled Successfully"
echo "=========================================="