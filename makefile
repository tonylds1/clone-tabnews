PWD = $(shell pwd -L)
IMAGE_BUILD = node:hydrogen-alpine3.17
DOCKER_RUN = docker run -u root -it --rm --network=host -v ${PWD}:/usr/src/myapp -w /usr/src/myapp ${IMAGE_BUILD} 

bash:
	- @${DOCKER_RUN} 'ash'
