#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./removing_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Removing irqbalance.${NC}\n";
  apt purge -y \
    irqbalance && sleep 5;
  apt autoremove -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
