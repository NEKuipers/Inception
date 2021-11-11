# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/11 11:06:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/11/11 13:17:47 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include srcs/.env
export $(shell sed 's/=.*//' srcs/.env)

up:
	docker-compose up --build -d --remove-orphans

down:
	docker-compose down -t 2

clean:
	docker-compose down -t 2
	docker rmi -f $(docker images -a -q)
