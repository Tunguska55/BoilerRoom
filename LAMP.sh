#!/usr/bin/env bash
sudo yum install -y httpd mariadb-server mariadb php php-fpm php-mysql php-gd wget
sudo systemctl start httpd
sudo systemctl start mariadb
sudo systemctl enable httpd
sudo systemctl enable mariadb
