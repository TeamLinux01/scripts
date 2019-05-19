# A collection of bash scripts

- [A collection of bash scripts](#a-collection-of-bash-scripts)
  - [create_sshkey_for_service.sh](#createsshkeyforservicesh)
  - [docker-images-updater.sh](#docker-images-updatersh)
  - [docker_sync_tag.sh](#dockersynctagsh)
  - [docker_run.sh](#dockerrunsh)
  - [dc_up.sh](#dcupsh)
  - [dc_down.sh](#dcdownsh)
  - [install_docker-ce.sh](#installdocker-cesh)
  - [install_docker-compose.sh](#installdocker-composesh)
  - [install_docker-machine.sh](#installdocker-machinesh)
  - [Pop_OS_Setup.sh](#popossetupsh)

## create_sshkey_for_service.sh

Used to create a new rsa 4096bit key file for ssh.

- ./create_sshkey_for_service.sh *server-hostname* *username*

- The script will create the ssl-key in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  - Host *server-hostname*
  - HostName *server-hostname*
  - User *username*
  - IdentityFile ~/.ssh/*ssl-key*

## docker-images-updater.sh

Used to pull all images installed on a machine and then ask user to prune unused images.

Remember to stop, rm and re-create containers that have a new imaged pulled.

- ./docker-images-updater.sh

## docker_sync_tag.sh

Used to update an image tag to point to a local registry, then push that image to that registry.

- ./docker_sync_tag.sh *image-name*:*tag*
  - Copy the .env.example to .env and change its value to your registry server's host-name.

## docker_run.sh

Run a docker container with audio/video capabilites. Removes the container on exit.

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

## [Pop_OS_Setup.sh](Pop_OS_Setup.md)
