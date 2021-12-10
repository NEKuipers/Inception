# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Dockerfile                                         :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/12/10 14:02:54 by nkuipers      #+#    #+#                  #
#    Updated: 2021/12/10 15:53:25 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y

WORKDIR /tmp/mariadb/

COPY src/ /tmp/mariadb/

RUN mkdir tempmysql/

RUN mkdir -p /run/mysql

RUN apt-get -qq install mariadb-server -y

RUN service mysql start && mariadb -u root < /tmp/mariadb/setup.sql

RUN 	sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/'\
		 -i /etc/mysql/mariadb.conf.d/50-server.cnf

RUN cp -r /var/lib/mysql/* tempmysql

EXPOSE 3306
CMD cp -r tempmysql/* /var/lib/mysql/ && mysqld 
