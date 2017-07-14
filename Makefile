.PHONY: default up down logs

default: up

up:
	docker-compose pull;
	docker-compose up -d;

down:
	docker-compose down;

logs:
	docker-compose logs;
