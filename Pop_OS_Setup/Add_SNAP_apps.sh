#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Add_SNAP_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  printf "${GREEN}Installing Visual Studio Code IDE (SNAP).${NC}\n";
  snap install code --classic && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Nextcloud client backup and sync app (SNAP).${NC}\n";
  snap install nextcloud-client \
    && snap connect nextcloud-client:password-manager-service && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing LibreOffice document suite (SNAP).${NC}\n";
  snap install libreoffice && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Log File Navigator (SNAP).${NC}\n";
  snap install lnav && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing OBS Studio video capture and streaming app (SNAP).${NC}\n";
  snap install obs-studio \
    && snap connect obs-studio:removable-media \
    && snap connect obs-studio:camera \
    && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Telegram Desktop chat app (SNAP).${NC}\n";
  snap install telegram-desktop && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Discord chat app (SNAP).${NC}\n";
  snap install discord && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Audacity audio editor (SNAP).${NC}\n";
  snap install audacity && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Gimp photo editor (SNAP).${NC}\n";
  snap install gimp && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Inkscape graphic editor (SNAP).${NC}\n";
  snap install inkscape && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Krita drawing app (SNAP).${NC}\n";
  snap install krita && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Shotcut video editor (SNAP).${NC}\n";
  snap install shotcut --classic && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing VLC media player (SNAP).${NC}\n";
  snap install vlc && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Spotify streaming music player (SNAP).${NC}\n";
  snap install spotify && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Gnome Twitch streaming video player (SNAP).${NC}\n";
  snap install gnome-twitch && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Skrooge finance app (SNAP).${NC}\n";
  snap install skrooge && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing SNAP Store (SNAP).${NC}\n";
  snap install snap-store && printf "${LGREEN}DONE${NC}\n" && sleep 5;
fi
