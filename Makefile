GREEN = \033[0;32m
RED = \033[0;31m
UNDO_COL = \033[0m

NAME = inception
SRC_DIR = srcs/

SRC =	$(SRC_DIR)docker-compose.yml

.PHONY: all clean fclean re

$(NAME): all

all: clean up

up: hosts
	mkdir -p /home/dima/dev/42/inception/data/wordpress_volume
	mkdir -p /home/dima/dev/42/inception/data/db_volume
	
	@echo "$(RED)Building containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) up -d --build
	@echo "$(GREEN)$(NAME) is now up and running!$(UNDO_COL)"

down:
	@echo "$(RED)Shutting down containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) down
	@echo "$(GREEN)Pulled down $(NAME)!$(UNDO_COL)"

clean: down
	@echo "$(RED)Pruning containers and images for $(NAME)...$(UNDO_COL)"
	docker system prune -af
	@echo "$(GREEN)Cleaned up, volumes still exist for $(NAME)!$(UNDO_COL)"

fclean: clean
	@echo "$(RED)Removing ALL volumes for $(NAME)...$(UNDO_COL)"
	docker volume rm -f db_volume
	docker volume rm -f wordpress_volume
	sudo rm -rf /home/dima/dev/42/inception/data/wordpress_volume
	sudo rm -rf /home/dima/dev/42/inception/data/db_volume
	@echo "$(GREEN)Removed all volumes for $(NAME)!$(UNDO_COL)"

re: clean up

destroy: fclean up

hosts:


.PHONY: all up down clean re