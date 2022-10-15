GREEN = \033[0;32m
RED = \033[0;31m
UNDO_COL = \033[0m

NAME = inception
SRC_DIR = srcs/

SRC =	$(SRC_DIR)docker-compose.yml

.PHONY: all clean fclean re

$(NAME): all

all: clean up

up:
	mkdir -p /home/dima/42/inception/data/wordpress_volume
	mkdir -p /home/dima/42/inception/data/db_volume
	@echo "$(RED)Building containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) up -d --build
	@echo "$(GREEN)$(NAME) is now up and running!$(UNDO_COL)"

down:
	sudo rm -rf /home/dima/42/inception/data/wordpress_volume
	sudo rm -rf /home/dima/42/inception/data/db_volume
#   #### CHECK THIS 'sudo' thing AGAIN! ######################################
	@echo "$(RED)Shutting down containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) down
	@echo "$(GREEN)Pulled down $(NAME)!$(UNDO_COL)"

clean: down
	docker system prune -f

re: clean up

.PHONY: all up down clean re