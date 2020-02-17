#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ "$EUID" -ne 0 ];then

  printf "Usage:
    sudo $0 \$USER
    Please run as ${RED}root${NC}\n";
  exit
else

  PASS="setup" #Used for looping until password is entered correctly for chsh.

  printf "${GREEN}Adding $1 to sudoers with no password required.${NC}\n";
  echo "$1 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user-pop-os && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  ./pop_os_setup/removing_apps.sh

  ./pop_os_setup/add_ppa_repos.sh flatpak.ppa git.ppa kubuntu-backports.ppa

  printf "${GREEN}Updating the rest of the system.${NC}\n";
  apt dist-upgrade -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  ./pop_os_setup/add_apps.sh

  ./pop_os_setup/add_flathub_repo.sh

  ./pop_os_setup/add_flatpak_apps.sh

  ./pop_os_setup/add_snap_apps.sh

  printf "${GREEN}Setting fish shell configs and functions.${NC}\n";
  sudo -H -u $1 bash -c "cp -R ./fish_config/. ~/.config/fish/";
  printf "${LGREEN}DONE${NC}\n" && sleep 5;

  ./pop_os_setup/add_vscode_extensions.sh $1

  printf "${GREEN}Setting Fish Shell as default shell for $1.${NC}\n${LGREEN}Please Enter your password when prompted.${NC}\n${RED}System will Reboot afterwards.${NC}\n";
  while [ $PASS != "true" ];do
    if [ "$PASS" != "true" ];then
     sudo -H -u $1 bash -c "chsh -s `which fish`"  && PASS="true" && printf "${LGREEN}DONE${NC}\n" && sleep 20;
    fi
  done

  printf "${RED}REBOOTING${NC}\n";
  reboot
fi
