#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

readarray -t FLATPAK_APPLICATIONS < `dirname $0`/lists/flatpak_apps.list;

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo $0
    Please run as ${RED}root${NC}\n";
  exit
else

  for flatpak_app in ${FLATPAK_APPLICATIONS[@]}
  do

    printf "${GREEN}flatpak install flathub $flatpak_app${NC}\n";

    flatpak install -y --noninteractive flathub $flatpak_app;
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
