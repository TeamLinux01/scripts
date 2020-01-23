#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo $0 ${GREEN}REPO_1.ppa REPO_2.ppa${NC}
    Please run as ${RED}root${NC}\n";
  exit
else

  for repo in $@
  do

    printf "${GREEN}apt-add-repository -y $(< `dirname $0`/lists/$repo)${NC}\n";
    apt-add-repository -y $(< `dirname $0`/lists/$repo);
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
