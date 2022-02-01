NAME = philo

CC = gcc
CC_FLAGS =	-g \
            -fsanitize=address

LDFLAGS =	-fsanitize=address

override CC_FLAGS +=	-c \
                        -Wall \
                        -Wextra \
                        -Werror \
                        -I${INCLUDE_DIR}

SRC_DIR =	./srcs

SRCS =	${SRC_DIR}/main.c \
		${SRC_DIR}/error.c \
		${SRC_DIR}/utils.c

OBJ_DIR =	./objects

OBJ =	$(patsubst ${SRC_DIR}/%.c, ${OBJ_DIR}/%.o, $(SRCS))

INCLUDE_DIR =	./include

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(CC_FLAGS) $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

test:	all
	./$(NAME)