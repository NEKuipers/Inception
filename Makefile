# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/11 11:06:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/12/10 10:40:30 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include srcs/.env
export $(shell sed 's/=.*//' srcs/.env)

up:
	cd srcs && docker-compose up --build -d --remove-orphans && cd ..

down:
	cd srcs && docker-compose down -t 2 && cd ..

fdown:
	cd srcs && docker-compose down -v -t 2 && cd ..

clean:
	docker-compose down --rmi all
	

.PHONY: up down fdown clean