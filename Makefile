# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/11 11:06:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/11/12 14:03:58 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include srcs/.env
export $(shell sed 's/=.*//' srcs/.env)

up:
	docker-compose up --build -d --remove-orphans

down:
	docker-compose down -t 2

clean:
	docker rmi -f $(docker images -a -q)
