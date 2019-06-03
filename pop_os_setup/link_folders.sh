#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ];then
  printf "Usage:\n./link_folders.sh ${LGREEN}PATH_TO_PARENT_FOLDER_FOR_STEAM/GAMES${NC}\n";
  exit
else

  printf "About to remove ~/Documents ~/Music ~/Pictures ~/Videos, create ~/Nextcloud, create symbolic links.\n";
  printf "${LGREEN}$1${NC} is the path chosen for Steam and Games.\n\n";
  read -p "Continue (y/n)?" choice
  case "$choice" in
  y|Y )
      rmdir ~/Documents ~/Music ~/Pictures ~/Videos;
      mkdir ~/Nextcloud;
      ln -s ~/Nextcloud/Documents ~/Documents;
      ln -s ~/Nextcloud/Music ~/Music;
      ln -s ~/Nextcloud/Pictures ~/Pictures;
      ln -s ~/Nextcloud/Videos ~/Videos;
      ln -s ~/Steam $1/Steam;
      ln -s ~/.steam $1/.steam;
      ln -s ~/Games $1/Games;
      ln -s ~/.steampath ~/.steam/sdk32/steam;
      ln -s ~/.steampid ~/.steam/steam.pid;
      printf "Done.\n";;
  n|N )
      printf "${RED}Aborted.${NC}\n";;
  * )
      printf "${RED}Aborted.${NC}\n";;
  esac;
fi
