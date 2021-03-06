# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlinhard <mlinhard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/25 03:05:25 by mlinhard          #+#    #+#              #
#    Updated: 2016/03/31 19:22:43 by mlinhard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=		libftprintf.a
CC		=		gcc
CFLAGS	=		-Wall -Wextra -Werror

SRCS	=		ft_printf.c \
				ft_printf_join.c \
				ft_printf_parse.c \
				ft_printf_parse_option.c \
				ft_printf_build_color.c \
				ft_printf_build_array.c \
				ft_printf_build_format.c \
				ft_printf_build_tools.c \
				ft_printf_build_str.c \
				ft_printf_build_int.c \
				ft_printf_build_int_base.c \
				ft_printf_build_int_tools.c \
				ft_printf_build_double.c \
				ft_printf_build_double_short.c \
				ft_printf_build_n.c \
				ft_printf_build_write.c

SRCS_LIB		= ft_strlen.c ft_strcmp.c ft_strdup.c ft_strcpy.c ft_strncpy.c \
				  ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
				  ft_strstr.c ft_strnstr.c ft_strncmp.c ft_putendl.c ft_itoa.c \
				  ft_putchar.c ft_putchar_fd.c ft_putstr.c ft_putstr_fd.c \
				  ft_putnbr_fd.c ft_putnbr.c ft_stralloc.c ft_putendl_fd.c \
				  ft_islower.c ft_isupper.c ft_toupper.c ft_tolower.c \
				  ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_lstmap.c \
				  ft_isprint.c ft_isspace.c ft_strdel.c ft_strclr.c ft_striter.c \
				  ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c \
				  ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
				  ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c ft_strnew.c \
				  ft_atoi.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
				  ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c \
				  ft_strtolower.c ft_strtoupper.c ft_countwords.c ft_pow.c ft_strrev.c \
				  ft_pcol.c ft_imaxtoa_base.c ft_uimaxtoa_base.c ft_wstrtostr.c \
				  ft_wchartostr.c ft_strrealloc.c ft_ldtoa.c

HDIR		=	./includes/
LDIR		=	./libft/
SRCSDIR		=	./srcs/

OBJS			=	$(subst .c,.o,$(SRCS))
OBJS_LIB		=	$(subst .c,.o,$(SRCS_LIB))
LIST_OBJ		=	$(addprefix $(SRCSDIR), $(OBJS))
LIST_OBJ_LIB	=	$(addprefix $(LDIR), $(OBJS_LIB))

RE			= \033[0;31m
GR			= \033[0;32m
YE			= \033[0;33m
BL			= \033[0;34m
WH			= \033[0;38m
OK			= $(WH)* [ $(GR)OK $(WH)]
KO			= $(WH)* [ $(RE)KO $(WH)]
W8			= $(WH)* [ $(BL)W8 $(WH)]

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -I$(HDIR) -I./ -c -o $@ $<

$(NAME): $(LIST_OBJ) $(LIST_OBJ_LIB)
	ar rc $(NAME) $(LIST_OBJ) $(LIST_OBJ_LIB)
	ranlib $(NAME)

clean:
	@echo "$(W8) $(YE)/bin/rm -rf $(LIST_OBJ) $(LIST_OBJ_LIB)$(WH)"
	@/bin/rm -rf $(LIST_OBJ) $(LIST_OBJ_LIB)
	@echo "$(OK) $(GR)Done!$(WH)"

fclean: clean
	@echo "$(W8) $(YE)/bin/rm -rf $(NAME)$(WH)"
	@/bin/rm -rf $(NAME)
	@echo "$(OK) $(GR)Done!$(WH)"

re: fclean all

.PHONY: all clean fclean re
