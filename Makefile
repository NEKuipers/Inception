# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/11 11:06:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/11/24 11:12:12 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include srcs/.env
export $(shell sed 's/=.*//' srcs/.env)

up:
	cd srcs && docker-compose up --build -d --remove-orphans && cd ..

down:
	cd srcs && docker-compose down -v -t 2 && cd ..

clean:
	docker rmi -f $(docker images -a -q)
