# A collection of bash scripts

- [A collection of bash scripts](#a-collection-of-bash-scripts)
  - [create sshkey for service](#create-sshkey-for-service)
  - [docker images updater](#docker-images-updater)
  - [docker sync tag](#docker-sync-tag)
  - [docker_run.sh](#dockerrunsh)
  - [dc_up.sh](#dcupsh)
  - [dc_down.sh](#dcdownsh)
  - [install_docker-ce.sh](#installdocker-cesh)
  - [install_docker-compose.sh](#installdocker-composesh)
  - [install_docker-machine.sh](#installdocker-machinesh)
  - [Pop OS Setup](#pop-os-setup)

## [create sshkey for service](create_sshkey_for_service.md)

## [docker images updater](docker-images-updater.md)

## [docker sync tag](docker_sync_tag.md)

## docker_run.sh

Run a docker container with audio/video capabilities. Removes the container on exit.

- ./docker_run.sh *image-name*:*tag*

## dc_up.sh

Used to spin up docker containers using docker-compose, re-creates containers if a new image is pulled.

- Runs docker-compose up -d --build
  - ./dc_up.sh

## dc_down.sh

Used to spin down docker containers using docker-compose.

- Runs docker-compose down, you can supply an argument, such as -v to remove volumes
  - ./dc_down.sh

## install_docker-ce.sh

Used to install docker community edition on an Ubuntu based system.

- sudo ./install_docker-ce.sh $USER

## install_docker-compose.sh

Used to install/update docker-compose.

- sudo ./install_docker-compose.sh *version-number*

## install_docker-machine.sh

Used to install/update docker-machine.

- sudo ./install_docker-machine.sh *version-number*

## [Pop OS Setup](Pop_OS_Setup.md)
