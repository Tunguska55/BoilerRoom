#!/bin/bash
sudo yum groupinstall "Development tools" -y
sudo yum install -y libffi-devel zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel expat-devel
cd /opt/
sudo wget http://python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
sudo tar xvf Python-3.6.4.tar.xz
cd Python-3.6.4
sudo ./configure --enable-optimizations
sudo make altinstall
