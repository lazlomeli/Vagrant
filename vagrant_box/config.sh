#!/bin/bash

 # Update and Upgrade
apt update
apt upgrade

# Install Apache2
apt install apache2 -y

# Install PHP, PHP dependencies and PHP MySQL
apt install libapache2-mod-php php php-mysql -y

# Install MySQL Server 8.0
apt install mysql-server -y

# Create the database schema and it's user
mysql -u root -e "CREATE DATABASE wordpress"
mysql -u root -e "CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'wppass'"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost'"

# Wordpress configuration 
cd /var/www/html
wget -c http://wordpress.org/latest.zip
unzip latest.zip
mv wordpress/* .
rm index.html

# Create and populate wp-config.php file
touch wp-config.php
cp wp-config-sample.php wp-config.php

# Edit wp-config.php with the wordpress data:
# Database name:
sed -i 's/database_name_here/wordpress/' wp-config.php

# Database user:
sed -i 's/username_here/wpuser/' wp-config.php

# Database password:
sed -i 's/password_here/wppass/' wp-config.php