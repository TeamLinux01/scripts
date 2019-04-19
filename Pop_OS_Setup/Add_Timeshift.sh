#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Add_Timeshift.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Adding Timeshift Repo.${NC}\n";
  apt-add-repository -y -n ppa:teejee2008/ppa && apt update && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Timeshift backup${NC}\n";
  apt install -y \
    timeshift && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
