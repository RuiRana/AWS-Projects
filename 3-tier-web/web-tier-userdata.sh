#!/bin/bash
# Update system and install Apache
sudo yum update -y
sudo yum install -y httpd

# Create a basic HTML file
echo "<html><h1>AWS 3-Tier Web App - Web Tier</h1></html>" > /var/www/html/index.html

# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd
