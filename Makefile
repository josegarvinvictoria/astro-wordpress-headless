.PHONY: up down restart logs wp-shell astro-shell

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up -d

logs:
	docker-compose logs -f

wp-shell:
	docker exec -it wp-headless bash

astro-shell:
	docker exec -it astro sh
