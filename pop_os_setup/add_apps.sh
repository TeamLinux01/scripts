#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

APPLICATIONS=(
  cpufrequtils
  flatpak
  fish
  gnome-tweak-tool
  gparted
  htop
  lm-sensors
  ncdu
  neofetch
  nextcloud-client
  nload
  p7zip-full
  pinentry-tty
  solaar-gnome3
  zfs-initramfs
  zfsutils-linux
)

if [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo ./add_apps.sh
    Please run as ${RED}root${NC}\n";
  exit
else

  apt_install="apt install -y";
  for application in ${APPLICATIONS[@]}
  do

    apt_install="$apt_install $application";    
  done

  printf "${GREEN}$apt_install${NC}\n";

  eval $apt_install;

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
