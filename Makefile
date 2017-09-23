.PHONY: default up down services services_messages services_databases services_elk;

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

services:
	make services_messages;
	make services_databases;
	make services_elk;
