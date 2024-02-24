#!/bin/bash

# Install MySQL Server
sudo apt-get update
sudo apt-get install -y mysql-server

# Configure MySQL
sudo mysql -u root -e "CREATE DATABASE petclinic DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
sudo mysql -u root -e "CREATE USER 'petclinic'@'localhost' IDENTIFIED BY 'petclinic';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON petclinic.* TO 'petclinic'@'localhost';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"
