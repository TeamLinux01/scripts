#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_git_repo.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Adding Git Repo${NC}\n";
  apt-add-repository -y ppa:git-core/ppa;

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
