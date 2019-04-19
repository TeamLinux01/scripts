#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Add_Git_Repo.sh
    Please run as ${RED}root${NC}\n";
  exit
else

printf "${GREEN}Adding Git Repo${NC}\n";
apt-add-repository -y ppa:git-core/ppa && printf "${LGREEN}DONE${NC}\n" && sleep 5;
