#!/bin/bash
# Update system and install PHP and MySQL client
sudo yum update -y
sudo yum install -y php php-mysqlnd httpd

# Create a simple PHP page that connects to RDS
cat <<EOF > /var/www/html/dbtest.php
<?php
\$conn = new mysqli("YOUR-RDS-ENDPOINT", "admin", "yourpassword", "yourdb");
if (\$conn->connect_error) {
  die("Connection failed: " . \$conn->connect_error);
}
echo "Connected successfully to RDS!";
?>
EOF

# Start web server
sudo systemctl start httpd
sudo systemctl enable httpd
