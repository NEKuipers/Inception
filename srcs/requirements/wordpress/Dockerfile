FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y

RUN apt-get install -y php-fpm php-mysql

WORKDIR /tmp/
ENV BUILDDIR=/tmp/build/
RUN mkdir ${BUILDDIR}

COPY src/ ${WORKDIR}

RUN mkdir -p /run/php

RUN tar xzf latest.tar.gz --directory ${BUILDDIR} && \
	mv wp-config.php ${BUILDDIR} && \
	mv index.php ${BUILDDIR}


RUN chmod -R 777 ${BUILDDIR}

RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf

RUN chmod 777 wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp-cli

EXPOSE 9000


CMD cp -a ${BUILDDIR}. /var/www/ && wp-cli core install --allow-root --title="Wordpress" --admin_name="nick" --admin_password="mypassword" --admin_email="nkuipers@student.codam.nl" --path="/var/www/wordpress/" --url="https://localhost/" && php-fpm7.3 -F -R
