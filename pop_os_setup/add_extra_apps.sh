#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

EXTRA_APPLICATIONS=(
  gamemode
  mesa-utils
  vulkan-utils
)

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_extra_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  apt_install="apt install -y";
  for application in ${EXTRA_APPLICATIONS[@]}
  do

    apt_install="$apt_install $application";
  done

  printf "${GREEN}$apt_install${NC}\n";

  eval $apt_install

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
