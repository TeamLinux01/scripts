#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

EXTRA_SNAP_APPLICATIONS=(
  audacity
  discord
  gimp
  inkscape
  krita
  obs-studio
  spotify
)

EXTRA_SNAP_APPLICATIONS_CLASSIC=(
  shotcut
)

SNAP_CONNECTIONS=(
  obs-studio:removable-media
  obs-studio:camera
)

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_extra_snap_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  for snap_app in ${EXTRA_SNAP_APPLICATIONS[@]}
  do

    printf "${GREEN}snap install $snap_app${NC}\n";

    snap install $snap_app;
  done

  for snap_app_classic in ${EXTRA_SNAP_APPLICATIONS_CLASSIC[@]}
  do

    printf "${GREEN}snap install $snap_app_classic --classic${NC}\n";

    snap install $snap_app_classic --classic;
  done

  for snap_connect in ${SNAP_CONNECTIONS[@]}
  do

    printf "${GREEN}snap connect $snap_connect${NC}\n";

    snap connect $snap_connect;
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
