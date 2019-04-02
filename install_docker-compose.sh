#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./install_docker-compose.sh ${GREEN}vCompose${NC}
    ${GREEN}vCompose${NC} format: ${LGREEN}1.24.0${NC}
    Please run as ${RED}root${NC}\n";
  exit
else
  printf "${GREEN}Installing Docker Compose $1.${NC}\n";
  curl -L https://github.com/docker/compose/releases/download/$1/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose && \
    chmod +x /tmp/docker-compose && \
    cp /tmp/docker-compose /usr/local/bin/docker-compose && printf "${LGREEN}DONE${NC}\n";
fi
