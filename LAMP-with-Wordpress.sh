#!/bin/bash/
sudo yum install -y httpd mariadb-server mariadb php php-fpm php-mysql php-gd wget
sudo systemctl start httpd
sudo systemctl start mariadb
sudo systemctl enable httpd
sudo systemctl enable mariadb
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo rsync -avP ~/wordpress/ /var/www/html/
sudo mkdir /var/www/html/wp-content/uploads
sudo chown -R apache:apache /var/www/html/*
cp -v /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
