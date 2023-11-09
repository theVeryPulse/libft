CC = gcc
CFLAGS = -Wall -Wextra -Werror
CFILES = \
ft_isalpha.c	ft_isdigit.c		ft_isalnum.c	ft_isascii.c	ft_isprint.c \
ft_strlen.c		ft_memset.c			ft_bzero.c		ft_memcpy.c		ft_memmove.c \
ft_strlcpy.c	ft_strlcat.c		ft_toupper.c	ft_tolower.c	ft_strchr.c \
ft_strrchr.c	ft_strncmp.c		ft_memchr.c		ft_memcpy.c		ft_strnstr.c \
ft_atoi.c		ft_calloc.c			ft_strdup.c \
\
ft_substr.c		ft_strjoin.c		ft_strtrim.c	ft_split.c		ft_itoa.c \
ft_strmapi.c	ft_striteri.c		ft_putchar_fd.c	ft_putstr_fd.c	ft_putendl_fd.c	\
ft_putnbr_fd.c \
\
ft_lstnew.c		ft_lstadd_front.c	ft_lstsize.c	ft_lstlast.c	ft_lstadd_back.c \
ft_lstdelone.c	ft_lstclear.c		ft_lstiter.c	ft_lstmap.c \



OFILES = $(CFILES:.c=.o)
NAME = libft.a

# build object files and archive the static library
all: $(NAME)

# build the library with the required .o files
$(NAME): $(OFILES)
	ar rcs $@ $^

# remove all .o files
clean:
	rm -f $(OFILES)

# remove static library as well as all .o files
fclean: clean
	rm -f $(NAME)

# remove all files, then rebuild the library
re: fclean all

# compile everything 
bonus: $(NAME) clean

# print information on all .c files
print: $(wildcard *.c)
	ls -la $(wildcard *.c)

.PHONY: all clean fclean re