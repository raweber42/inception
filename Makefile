GREEN = \033[0;32m
RED = \033[0;31m
UNDO_COL = \033[0m

NAME = inception
SRC_DIR = srcs/

SRC =	$(SRC_DIR)docker-compose.yml

.PHONY: all clean fclean re

all: clean up

up:
	@echo "$(RED)Building containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) up -d --build
	@echo "$(GREEN)$(NAME) is now up and running!$(UNDO_COL)"

down:
	@echo "$(RED)Shutting down containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) down
	@echo "$(GREEN)Pulled down $(NAME)!$(UNDO_COL)"

clean:
	rm -f $(NAME)

re: fclean all