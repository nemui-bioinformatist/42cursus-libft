# NAME  = libft.a

# SRCS  = ft_isalnum.c\
# 		ft_isalpha.c\
# 		ft_isdigit.c\
# 		ft_isascii.c\
# 		ft_isprint.c\
# 		ft_strlen.c\
# 		ft_memset.c\
# 		ft_isdigit.c\
# 		ft_putchar_fd.c\
# 		ft_split.c\
# 		ft_striteri.c\
# 		ft_strjoin.c\
# 		ft_strlen.c\
# 		ft_strmapi.c\
# 		ft_substr.c\
# 		ft_strdup.c\
# 		ft_putendl_fd.c\
# 		ft_putnbr_fd.c\
# 		ft_putstr_fd.c\
# 		ft_strtrim.c\
# 		ft_bzero.c\
# 		ft_calloc.c\
# 		ft_memchr.c\
# 		ft_memcmp.c\
# 		ft_memcpy.c\
# 		ft_memmove.c\
# 		ft_strchr.c\
# 		ft_strlcat.c\
# 		ft_strlcpy.c\
# 		ft_strncmp.c\
# 		ft_strnstr.c\
# 		ft_strrchr.c\
# 		ft_tolower.c\
# 		ft_toupper.c\
# 		ft_itoa.c\
# 		ft_putnbr_fd.c\
# 		ft_atoi.c

# BONUS_SRCS = ft_lstnew.c\
# 			 ft_lstadd_front.c\
#			 ft_lstsize.c\
#            ft_lstlast.c\
#            ft_lstadd_back.c\
#            ft_lstdelone.c\
#            ft_lstclear.c\
#            ft_lstiter.c

# OBJS  = $(SRCS:.c=.o)
# BONUS_OBJS = $(BONUS_SRCS:.c=.o)

# CC    = cc
# CFLAG = -Wall -Wextra -Werror

# ifdef BONUS_FLAG
# 	OBJS += $(BONUS_OBJS)
# endif

# $(NAME): $(OBJS)
# 	ar -rcs $(NAME) $(OBJS)
	
# all: $(NAME)

# .c.o:
# 	$(CC) $(CFLAG) -c $< -o $(<:.c=.o)
# clean:
# 	rm -f $(OBJS) $(BONUS_OBJS)
# fclean: clean
# 	rm -f $(NAME)
# re:
# 	fclean all
# bonus:
# 	make BONUS_FLAG=1
# .PHONY : all bonus clean fclean re
##########################################
NAME = libft.a
CC = cc
AR = ar rcs
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
       ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
       ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
       ft_calloc.c ft_strdup.c ft_toupper.c ft_tolower.c \
       ft_strchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c \
       ft_strnstr.c ft_atoi.c ft_strrchr.c ft_substr.c \
       ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
       ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
       ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
B_SRCS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c\
			ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
			ft_lstclear.c ft_lstiter.c

OBJS = $(SRCS:.c=.o)
B_OBJS = $(B_SRCS:.c=.o)


all: $(NAME)

.c.o: $(OBJS)
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)


clean:
	$(RM) $(OBJS) $(B_OBJS)

fclean: clean
	$(RM) $(NAME)

bonus: $(B_OBJS)
	$(AR) $(NAME) $(B_OBJS)

re: fclean all


.PHONY : all bonus clean fclean re
