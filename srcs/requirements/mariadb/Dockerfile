FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y

WORKDIR /tmp/mariadb/

COPY src/ /tmp/mariadb/

RUN mkdir -p /run/mysql

RUN apt-get install mariadb-server -y

RUN service mysql start && \
	mariadb -u root < /tmp/mariadb/setup.sql

RUN sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' -i /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306
CMD mysqld
