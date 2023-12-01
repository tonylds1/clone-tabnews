PWD = $(shell pwd -L)
IMAGE_BUILD = node:hydrogen-alpine3.17
DOCKER_RUN = docker run -u root -it --rm --network=host -v ${PWD}:/usr/src/myapp -w /usr/src/myapp ${IMAGE_BUILD} 
SERVICES = docker compose --file infra/compose.yaml 

up:
	- @${SERVICES} up -d

stop:
	- @${SERVICES} stop

down:
	- @${SERVICES} down

logs-db:
  - docker logs -f infra-database-1

logs-app:
  - docker logs -f infra-app-1