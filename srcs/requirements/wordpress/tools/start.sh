[ "$(ls -A /var/www/html/)" ] && echo "Not Empty" || mv /wordpress/* /var/www/html/
php-fpm7.3 --nodaemonize