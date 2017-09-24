.PHONY: default up down build services_applications services_messages services_databases services_elk;

default: up

up:
	docker-compose up -d;

down:
	docker-compose down;

services_messages:
	docker-compose -f $(PWD)/services/messages/docker-compose.yml up -d;

services_databases:
	docker-compose -f $(PWD)/services/databases/docker-compose.yml up -d;

services_elk:
	docker-compose -f $(PWD)/services/elk/docker-compose.yml up -d;

services_applications:
	docker stack deploy -c $(PWD)/services/applications/docker-compose.yml applications;

build:
	docker build -t abibao/node_dependencies -f $(PWD)/dependencies/Dockerfile $(PWD)/dependencies;
	docker push abibao/node_dependencies
