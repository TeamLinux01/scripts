#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./add_snap_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Installing Visual Studio Code IDE (SNAP).${NC}\n";
  snap install code --classic && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Log File Navigator (SNAP).${NC}\n";
  snap install lnav && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Telegram Desktop chat app (SNAP).${NC}\n";
  snap install telegram-desktop && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing KeePassXC password manager (SNAP).${NC}\n";
  snap install keepassxc && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing SNAP Store (SNAP).${NC}\n";
  snap install snap-store && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
