# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: nkuipers <nkuipers@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/10/06 14:41:45 by nkuipers      #+#    #+#                  #
#    Updated: 2021/10/06 15:55:20 by nkuipers      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include ./srcs/.env

COMP = docker-compose -f srcs/docker-compose.yml 

all: 
	${COMP} up -d
up :
	${COMP} up -d
start:
	${COMP} start
down:
	${COMP} down
ps:
	${COMP} ps
