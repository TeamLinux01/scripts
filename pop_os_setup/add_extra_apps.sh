#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./add_extra_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

printf "${GREEN}Installing Audacious music player and GameMode${NC}\n";
  apt install -y \
    gamemode \
    mesa-utils \
    vulkan-utils && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
