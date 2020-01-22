#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

SNAP_APPLICATIONS=(
  keepassxc
  lnav
  snap-store
  telegram-desktop
)

SNAP_APPLICATIONS_CLASSIC=(
  code
)

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_snap_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  for snap_app in ${SNAP_APPLICATIONS[@]}
  do

    printf "${GREEN}snap install $snap_app${NC}\n";

    snap install $snap_app;
  done

  for snap_app_classic in ${SNAP_APPLICATIONS_CLASSIC[@]}
  do

    printf "${GREEN}snap install $snap_app_classic --classic${NC}\n";

    snap install $snap_app_classic --classic;
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
