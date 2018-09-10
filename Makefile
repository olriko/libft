# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohamon <ohamon@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/20 23:11:35 by ohamon            #+#    #+#              #
#    Updated: 2018/09/10 11:14:53 by ohamon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror
ARFLAGS = rcs 
NAME = libft.a
INCLUDES= -I includes/
SRC_FOLDER = src/
OBJ_FOLDER = obj/

SRC = 	mem/ft_memset.c \
		mem/ft_bzero.c \
		mem/ft_memcpy.c \
		mem/ft_memccpy.c \
		mem/ft_memmove.c \
		mem/ft_memchr.c \
		mem/ft_memcmp.c \
		mem/ft_memalloc.c \
		mem/ft_memdel.c \
		str/ft_strlen.c \
		str/ft_strdup.c \
		str/ft_strcpy.c \
		str/ft_strncpy.c \
		str/ft_strcat.c \
		str/ft_strncat.c \
		str/ft_strlcat.c \
		str/ft_strstr.c \
		str/ft_strnstr.c \
		str/ft_strcmp.c \
		str/ft_toupper.c \
		str/ft_tolower.c \
		str/ft_strchr.c \
		str/ft_strncmp.c \
		str/ft_strrchr.c \
		str/ft_strnew.c \
		str/ft_strdel.c \
		str/ft_strclr.c \
		str/ft_striter.c \
		str/ft_striteri.c \
		str/ft_strmap.c \
		str/ft_strmapi.c \
		str/ft_strequ.c \
		str/ft_strnequ.c \
		str/ft_strsub.c \
		str/ft_strjoin.c \
		str/ft_strtrim.c \
		str/ft_strtrim.c \
		str/ft_strsplit.c \
		char/ft_isblank.c \
		char/ft_islower.c \
		char/ft_isupper.c \
		char/ft_isspace.c \
		char/ft_isxdigit.c \
		char/ft_isalpha.c \
		char/ft_isdigit.c \
		char/ft_isalnum.c \
		char/ft_isascii.c \
		char/ft_isprint.c \
		put/ft_putchar.c \
		put/ft_putchar_fd.c \
		put/ft_putstr.c \
		put/ft_putendl.c \
		put/ft_putnbr.c \
		put/ft_putstr_fd.c \
		put/ft_putendl_fd.c \
		put/ft_putnbr_fd.c \
		lst/ft_lstnew.c \
		lst/ft_lstdelone.c \
		lst/ft_lstdel.c \
		lst/ft_lstadd.c \
		lst/ft_lstiter.c \
		lst/ft_lstmap.c \
		others/ft_htoi.c \
		others/ft_atoi.c \
		others/ft_itoa.c \
		others/get_next_line.c \
		num/ft_abs.c

OBJ = $(SRC:.c=.o)

OBJ := $(addprefix $(OBJ_FOLDER), $(OBJ))
SRC := $(addprefix $(SRC_FOLDER), $(SRC))

all: $(NAME)

$(NAME): $(OBJ)
	@ar $(ARFLAGS) $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "$(NAME) created"

$(OBJ_FOLDER)%.o: $(SRC_FOLDER)%.c
	@mkdir -p $(dir $@)
	@gcc $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -rf $(OBJ_FOLDER)
	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"

re: fclean all

.PHONY: all, clean, fclean, re
