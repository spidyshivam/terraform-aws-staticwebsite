#!/bin/bash
URL="https://www.tooplate.com/zip-templates/2117_infinite_loop.zip"
apt update
apt install wget unzip apache2 -y
systemctl start apache2
systemctl enable apache2
wget $URL
unzip -o 2117_infinite_loop.zip
cp -r 2117_infinite_loop/* /var/www/html/
systemctl restart apache2
