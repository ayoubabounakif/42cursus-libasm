NAME = compile

NASM = nasm

NASMFLAGS = -f macho64

SRCS = ft_write.s \
ft_read.s \
ft_strlen.s \
ft_strcpy.s \
ft_strcmp.s \
ft_strdup.s \

OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all