# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gfrancis <gfrancis@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/17 14:53:53 by gfrancis          #+#    #+#              #
#    Updated: 2024/02/17 14:56:43 by gfrancis         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	minitalk

CC		=	cc
CFLAGS	=	-Wall -Werror -Wextra
RM		=	rm -f

CLIENT	=	client
SERVER	=	server

all:		$(NAME)

$(SERVER):	$(SERVER).c minitalk.h
			@$(CC) $(CFLAGS) -o $(SERVER) $(SERVER).c

$(CLIENT):	$(CLIENT).c minitalk.h
			@$(CC) $(CFLAGS) -o $(CLIENT) $(CLIENT).c
			
clean:
			@$(RM) $(CLIENT) $(SERVER)

fclean:		clean

re:			fclean all

.PHONY: 	all clean fclean re