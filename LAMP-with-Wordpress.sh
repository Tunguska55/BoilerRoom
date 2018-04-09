#!/usr/bin/env bash
sudo yum install -y httpd mariadb-server mariadb php php-fpm php-mysql php-gd wget
sudo systemctl start httpd mariadb
#sudo systemctl start mariadb
sudo systemctl enable httpd mariadb
#sudo systemctl enable mariadb
cd /opt/
sudo wget http://wordpress.org/latest.tar.gz
sudo tar xzvf latest.tar.gz
sudo rsync -avP ./wordpress/ /var/www/html/
sudo mkdir /var/www/html/wp-content/uploads
sudo chown -R apache:apache /var/www/html/*
cp -v /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mysql_secure_installation
