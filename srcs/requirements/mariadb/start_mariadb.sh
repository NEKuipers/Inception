#!/bin/sh

service mysql start
sleep 10
mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`"
mysql -e "CREATE USER IF NOT EXISTS \`${WP_USER}\`@'%' IDENTIFIED BY '${WP_USER_PASSWORD}'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO \`${WP_ADMIN}\`@'%' IDENTIFIED BY '${WP_ADMIN_PASSWORD}'"
mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${WP_USER}\`@'%'"
mysql -e "FLUSH PRIVILEGES"

service mysql stop

exec mysqld -u root --datadir="/var/lib/mysql"