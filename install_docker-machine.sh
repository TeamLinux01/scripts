#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./install_docker-compose.sh ${GREEN}vMachine${NC}
    ${GREEN}vMachine${NC} format: ${LGREEN}0.16.1${NC}
    Please run as ${RED}root${NC}\n";
  exit
else
  printf "${GREEN}Installing Docker Machine $1.${NC}\n";
  curl -L https://github.com/docker/machine/releases/download/v$1/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine && \
    chmod +x /tmp/docker-machine && \
    cp /tmp/docker-machine /usr/local/bin/docker-machine && printf "${LGREEN}DONE${NC}\n";
fi