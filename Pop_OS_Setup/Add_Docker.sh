#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Add_Docker.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Adding Docker Repo key.${NC}\n";
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Docker Repo.${NC}\n";
  apt-add-repository -y -n \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    bionic \
    stable" && apt update && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Docker${NC}\n";
  apt install -y \
    apt-transport-https \
    ca-certificates \
    containerd.io \
    curl \
    docker-ce \
    docker-ce-cli \
    gnupg-agent \
    software-properties-common && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding $1 to group docker.${NC}\n";
  usermod -aG docker $1 && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
