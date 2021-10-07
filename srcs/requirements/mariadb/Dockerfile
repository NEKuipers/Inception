FROM debian:buster
RUN 		apt-get update && apt-get -y upgrade
RUN 		apt-get install -y mariadb-server
COPY		start_mariadb.sh /start.sh
RUN			chmod +x /start.sh
COPY		./conf/my.cnf /etc/mysql/my.cnf
RUN			chmod +rw /etc/mysql/my.cnf
ENTRYPOINT	["/start.sh"]
EXPOSE 3306