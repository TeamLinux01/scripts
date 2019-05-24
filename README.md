# A collection of bash scripts

- [A collection of bash scripts](#a-collection-of-bash-scripts)
  - [Create SSH key for service](#create-ssh-key-for-service)
  - [Docker images updater](#docker-images-updater)
  - [Docker sync tag](#docker-sync-tag)
  - [Docker run](#docker-run)
  - [dc_up.sh](#dcupsh)
  - [dc_down.sh](#dcdownsh)
  - [install_docker-ce.sh](#installdocker-cesh)
  - [install_docker-compose.sh](#installdocker-composesh)
  - [install_docker-machine.sh](#installdocker-machinesh)
  - [Pop!_OS setup](#popos-setup)

## [Create SSH key for service](README/create-ssh-key-for-service.md)

## [Docker images updater](README/docker-images-updater.md)

## [Docker sync tag](README/docker-sync-tag.md)

## [Docker run](README/docker-run.md)

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

## [Pop!_OS setup](README/pop-os-setup.md)
