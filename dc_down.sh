#!/bin/sh
DOCKER_COMPOSE_VERSION="1.25.0"

docker run --rm -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${PWD}":"${PWD}" -w "${PWD}" \
  docker/compose:$DOCKER_COMPOSE_VERSION down "$@"
