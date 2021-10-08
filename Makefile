include .env
export $(shell sed 's/=.*//' .env)

up:
	docker-compose up --build -d --remove-orphans

down:
	docker-compose down -t 2

preinstall:
	sh ./srcs/preinstall.sh
	echo "127.0.0.1 $(LOGIN).42.fr" >> /etc/hosts
	touch preinstall

# attach shell to sql container
shell_mariadb:
	@echo "When in shell run:"
	@echo "select host, user, password from mysql.user;"
	docker container exec -it inception_mariadb_1  mysql

# delete everything cached by docker(-compose)
reset:
	docker stop $(docker ps -qa)
	docker rm $(docker ps -qa)
	docker rmi -f $(docker images -qa)
