#!/bin/bash
DOCKER_COMPOSE_VERSION="$(< `dirname $0`/docker-compose.version)"

docker run --rm -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${PWD}":"${PWD}" -w "${PWD}" \
  docker/compose:$DOCKER_COMPOSE_VERSION up -d --build
