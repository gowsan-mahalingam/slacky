# Variables
DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = docker-compose.yaml
SERVICE = backend

# Cibles
.PHONY: build up down logs sh

build:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build $(SERVICE)

build-nocache:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build --no-cache $(SERVICE)

up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(SERVICE)

down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

logs:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs -f $(SERVICE)

sh:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) exec $(SERVICE) sh
