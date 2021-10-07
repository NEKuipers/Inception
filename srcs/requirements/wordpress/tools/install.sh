apt update
apt install -y vim
apt install -y unzip
apt install -y wget
apt install -y php-fpm php-mysql
apt upgrade -y
mkdir -p /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -rf latest.zip
cp wp-config.php ./wordpress
service php7.3-fpm start
service php7.3-fpm stop