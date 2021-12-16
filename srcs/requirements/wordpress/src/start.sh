cp -a ${BUILDDIR}. /var/www/

wp-cli core install --allow-root --title="Wordpress" --admin_name="nick" --admin_password="mypassword" --admin_email="nkuipers@student.codam.nl" --path="/var/www/wordpress/" --url="https://localhost/"

php-fpm7.3 -F -R