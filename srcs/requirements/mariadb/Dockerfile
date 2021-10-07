FROM debian:buster
EXPOSE 3306
ARG WP_DB_NAME
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_PASSWORD
ARG MYSQL_USER
ENV WP_DB_NAME=${WP_DB_NAME}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_USER=${MYSQL_USER}
RUN apt-get update
RUN apt-get install -y mariadb-server
COPY ./conf/wordpress.sql /
COPY ./tools/config.sh /
RUN  sh  /config.sh
COPY ./tools/start.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
ENTRYPOINT ["sh", "start.sh"]
