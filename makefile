# LIBRARY INFORMATION
LIBRARY_NAME = request-transformer
PHP_VERSION = 8.3

# DOCKER
DOCKER_IMAGE_TAG = ${LIBRARY_NAME}:${PHP_VERSION}-cli
DOCKERFILE_PATH = ./docker/Dockerfile
DOCKER_WORKDIR = /srv/library

# DOCKER COMMAND
DOCKER_IMAGE_BUILD = docker image build --build-arg PHP_VERSION=${PHP_VERSION} --file ${DOCKERFILE_PATH} --tag ${DOCKER_IMAGE_TAG} .
DOCKER_CONTAINER_RUN = docker container run --interactive --tty --volume ./:${DOCKER_WORKDIR} --workdir ${DOCKER_WORKDIR} ${DOCKER_IMAGE_TAG}

build:
	@${DOCKER_IMAGE_BUILD}

bash:
	@${DOCKER_CONTAINER_RUN} bash
