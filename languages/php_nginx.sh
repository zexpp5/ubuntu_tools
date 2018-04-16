#!/bin/bash
echo "Installing and configuring NGINX PHP..."
apt-get install -y nginx
apt-get install -y php php-fpm php-mysql php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl
apt-get install -y epel-release
if [ -f "/etc/php/7.0/fpm/php.ini" ];then
    sed -i '/;cgi.fix_pathinfo=1/s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini
fi
cp -f ~/ubuntu_tools/config/nginx/default /etc/nginx/sites-available/default
nginx -s reload
touch /var/www/html/info.php
echo "<?php" > /var/www/html/info.php
echo "phpinfo();" >> /var/www/html/info.php
