# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apirovan <apirovan@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/13 16:26:28 by apirovan          #+#    #+#              #
#    Updated: 2022/09/20 14:25:25 by apirovan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c\
		ft_printf_utils.c\
		ft_pr_point.c\
		ft_itoa.c

OBJS = ${SRCS:.c=.o}

CC = gcc -Wall -Werror -Wextra

.c.o: ${SRCS}
			${CC} -c -o $@ $<

${NAME}:	${OBJS}
			ar r ${NAME} ${OBJS}

all: ${NAME}

clean:
	rm -f *.o

fclean:
	make clean
	rm -f $(NAME)
	
re:
	make fclean
	make