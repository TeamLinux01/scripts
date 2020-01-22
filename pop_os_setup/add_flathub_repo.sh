#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_flathub_repo.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Adding Flathub Repo${NC}\n";
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
