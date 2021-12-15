# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/11 11:06:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/12/15 15:25:35 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include srcs/.env
export $(shell sed 's/=.*//' srcs/.env)

up:
	cd srcs && docker-compose up --build -d --remove-orphans && cd ..

down:
	cd srcs && docker-compose down -t 2 && cd ..
	@rm -rf ~/data/mariadb

fdown:
	cd srcs && docker-compose down -t 2 -v && cd ..
	@rm -rf ~/data

clean:
	docker-compose down --rmi all
	

.PHONY: up down fdown clean

