.PHONY: default up services_messages services_databases services_elk down;

default: up

up:
	docker-compose up -d;

down:
	docker-compose down;

services_messages:
	docker-compose -f $(PWD)/docker/composeui/messages/docker-compose.yml up -d;

services_databases:
	docker-compose -f $(PWD)/docker/composeui/databases/docker-compose.yml up -d;

services_elk:
	docker-compose -f $(PWD)/docker/composeui/elk/docker-compose.yml up -d;
