#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./add_nextcloud_client_repo.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Adding Nextcloud Client Repo${NC}\n";
  apt-add-repository -y ppa:nextcloud-devs/client && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
