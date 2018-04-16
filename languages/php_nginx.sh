#!/bin/bash
echo "Installing and configuring NGINX PHP..."
apt-get install nginx
apt-get install php php-fpm php-mysql php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl
apt-get install epel-release
