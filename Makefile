.PHONY: default up down;

default: up

up:
	docker stack deploy --compose-file=docker-compose.yml infra;

down:
	docker stack rm infra;
