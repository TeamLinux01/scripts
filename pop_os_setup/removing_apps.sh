#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

REMOVE_APPLICATIONS=(
  irqbalance
)
if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./removing_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  apt_purge="apt purge -y"
  for application in ${REMOVE_APPLICATIONS[@]}
  do

    apt_purge="$apt_purge $application";
  done

  printf "${GREEN}$apt_purge${NC}\n";
  
  eval $apt_purge;

  apt autoremove -y;
fi

printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
