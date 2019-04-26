#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Pop_OS_Setup.sh ${LGREEN}\$USER${NC} ${GREEN}vCompose vMachine${NC}
    ${GREEN}vCompose${NC} format: ${LGREEN}1.24.0${NC}
    ${GREEN}vMachine${NC} format: ${LGREEN}0.16.1${NC}
    Please run as ${RED}root${NC}\n";
  exit
else
  PASS="setup" #Used for looping until password is entered correctly for chsh.

  printf "${GREEN}Adding $1 to sudoers with no password required.${NC}\n";
  echo "$1 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user-pop-os && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  ./Pop_OS_Setup/Removing_apps.sh

  ./Pop_OS_Setup/Add_Docker.sh

  ./Pop_OS_Setup/Add_Git_Repo.sh

  printf "${GREEN}Updating the rest of the system.${NC}\n";
  apt dist-upgrade -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Audacious music player, Fish Shell, GameMode, gparted, ncdu, ovmf, pinentry-tty, tree, Snaps, Solaar unifying receiver, virt-manger and ZFS Utilities${NC}\n";
  apt install -y \
    aptitude \
    audacious \
    cpufreqctl \
    fish \
    gamemode \
    gnome-tweak-tool \
    gparted \
    htop \
    lm-sensors \
    ncdu \
    neofetch \
    nload \
    ovmf \
    pinentry-tty \
    tree \
    snapd \
    solaar-gnome3 \
    virt-manager \
    vulkan-utils \
    zfs-initramfs \
    zfsutils-linux && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Docker Compose $2.${NC}\n";
  curl -L https://github.com/docker/compose/releases/download/$2/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose && \
    chmod +x /tmp/docker-compose && \
    cp /tmp/docker-compose /usr/local/bin/docker-compose && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Docker Machine $3.${NC}\n";
  curl -L https://github.com/docker/machine/releases/download/v$3/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine && \
    chmod +x /tmp/docker-machine && \
    cp /tmp/docker-machine /usr/local/bin/docker-machine && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Updating system.${NC}\n";
  aptitude update && aptitude safe-upgrade -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  ./Pop_OS_Setup/Add_SNAP_apps.sh

  printf "${GREEN}Setting fish shell configs and functions.${NC}\n";
  sudo -H -u $1 bash -c 'cp -R ./fish_config/. ~/.config/fish/';
  printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing VS Code extensions.${NC}\n";
  sudo -H -u $1 bash -c 'code --install-extension alefragnani.bookmarks';
  sudo -H -u $1 bash -c 'code --install-extension Angular.ng-template';
  sudo -H -u $1 bash -c 'code --install-extension EditorConfig.EditorConfig';
  sudo -H -u $1 bash -c 'code --install-extension christian-kohler.path-intellisense';
  sudo -H -u $1 bash -c 'code --install-extension DavidAnson.vscode-markdownlint';
  sudo -H -u $1 bash -c 'code --install-extension dbaeumer.vscode-eslint';
  sudo -H -u $1 bash -c 'code --install-extension eamodio.gitlens';
  sudo -H -u $1 bash -c 'code --install-extension eg2.tslint';
  sudo -H -u $1 bash -c 'code --install-extension eg2.vscode-npm-script';
  sudo -H -u $1 bash -c 'code --install-extension esbenp.prettier-vscode';
  sudo -H -u $1 bash -c 'code --install-extension gregorbiswanger.json2ts';
  sudo -H -u $1 bash -c 'code --install-extension infinity1207.angular2-switcher';
  sudo -H -u $1 bash -c 'code --install-extension jdforsythe.add-new-line-to-files';
  sudo -H -u $1 bash -c 'code --install-extension johnpapa.angular-essentials';
  sudo -H -u $1 bash -c 'code --install-extension johnpapa.Angular2';
  sudo -H -u $1 bash -c 'code --install-extension johnpapa.winteriscoming';
  sudo -H -u $1 bash -c 'code --install-extension medo64.render-crlf';
  sudo -H -u $1 bash -c 'code --install-extension mikestead.dotenv';
  sudo -H -u $1 bash -c 'code --install-extension ms-vsliveshare.vsliveshare';
  sudo -H -u $1 bash -c 'code --install-extension msjsdiag.debugger-for-chrome';
  sudo -H -u $1 bash -c 'code --install-extension natewallace.angular2-inline';
  sudo -H -u $1 bash -c 'code --install-extension PeterJausovec.vscode-docker';
  sudo -H -u $1 bash -c 'code --install-extension PKief.material-icon-theme';
  sudo -H -u $1 bash -c 'code --install-extension spywhere.guides';
  sudo -H -u $1 bash -c 'code --install-extension streetsidesoftware.code-spell-checker';
  sudo -H -u $1 bash -c 'code --install-extension tyriar.sort-lines';
  sudo -H -u $1 bash -c 'code --install-extension yzane.markdown-pdf';
  sudo -H -u $1 bash -c 'code --install-extension yzhang.markdown-all-in-one';
  printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Setting Fish Shell as default shell for $1.${NC}\n${LGREEN}Please Enter your password when prompted.${NC}\n${RED}System will Reboot afterwards.${NC}\n";
  while [ $PASS != "true" ];do
    if [ "$PASS" != "true" ];then
     sudo -H -u $1 bash -c 'chsh -s `which fish`'  && PASS="true" && printf "${LGREEN}DONE${NC}\n" && sleep 20;
    fi
  done

  printf "${RED}REBOOTING${NC}\n";
  reboot
fi
