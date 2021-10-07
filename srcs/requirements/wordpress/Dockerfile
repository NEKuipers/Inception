FROM debian:buster
EXPOSE 9000
COPY ./tools/install.sh .
COPY ./tools/start.sh .
RUN bash install.sh
COPY ./conf/wp-config.php /wordpress/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/
ENTRYPOINT ["bash", "start.sh"]
