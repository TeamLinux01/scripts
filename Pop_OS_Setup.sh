#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ "$EUID" -ne 0 ];then
  printf "Usage:
    sudo ./Pop_OS_Setup.sh ${LGREEN}\$USER${NC} ${GREEN}vCompose vMachine${NC}
    ${GREEN}vCompose${NC} format: ${LGREEN}1.23.2${NC}
    ${GREEN}vMachine${NC} format: ${LGREEN}0.16.1${NC}
    Please run as ${RED}root${NC}\n";
  exit
else
  PASS="setup" #Used for looping until password is entered correctly for chsh.

  printf "${GREEN}Adding $1 to sudoers with no password required.${NC}\n";
  echo "$1 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user-pop-os && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Removing LibreOffice so that it can be installed as a snap.${NC}\n";
  apt purge -y libreoffice-calc \
    libreoffice-common \
    libreoffice-core \
    libreoffice-draw \
    libreoffice-impress \
    libreoffice-math \
    libreoffice-writer && sleep 5;
  apt autoremove -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Docker Repo key.${NC}\n";
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Docker Repo.${NC}\n";
  apt-add-repository -y -n \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Fish Shell Repo.${NC}\n";
  apt-add-repository -y -n ppa:fish-shell/release-3 && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Timeshift Repo.${NC}\n";
  apt-add-repository -y -n ppa:teejee2008/ppa && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding Git Repo${NC}\n";
  apt-add-repository -y ppa:git-core/ppa && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Updating the rest of the system.${NC}\n";
  apt dist-upgrade -y && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Amarok media player, Docker, Fish Shell, GameMode, gparted, ncdu, pinentry-tty, qemu-efi, Timeshift backup, tree, Snaps, Solaar unifying receiver and virt-manger${NC}\n";
  apt install -y \
    amarok \
    aptitude \
    apt-transport-https \
    ca-certificates \
    containerd.io \
    curl \
    docker-ce \
    docker-ce-cli \
    fish \
    gamemode \
    gnupg-agent \
    gparted \
    htop \
    ncdu \
    nload \
    pinentry-tty \
    qemu-efi \
    timeshift \
    tree \
    snapd \
    solaar-gnome3 \
    software-properties-common \
    virt-manager && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Adding $1 to group docker.${NC}\n";
  usermod -aG docker $1 && printf "${LGREEN}DONE${NC}\n" && sleep 5;

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

  printf "${GREEN}Installing Visual Studio Code (SNAP).${NC}\n";
  snap install vscode --classic && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Nextcloud client (SNAP).${NC}\n";
  snap install nextcloud-client \
    && snap connect nextcloud-client:password-manager-service && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing LibreOffice (SNAP).${NC}\n";
  snap install libreoffice && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Log File Navigator (SNAP).${NC}\n";
  snap install lnav && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing OBS Studio (SNAP).${NC}\n";
  snap install obs-studio \
    && snap connect obs-studio:removable-media \
    && snap connect obs-studio:camera \
    && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Telegram Desktop (SNAP).${NC}\n";
  snap install telegram-desktop && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Discord (SNAP).${NC}\n";
  snap install discord && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing VLC (SNAP).${NC}\n";
  snap install vlc && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing Spotify (SNAP).${NC}\n";
  snap install spotify && printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Setting fish shell configs and functions.${NC}\n";
  sudo -H -u $1 bash -c 'cp -R ./fish_config/. ~/.config/fish/';
  printf "${LGREEN}DONE${NC}\n" && sleep 5;

  printf "${GREEN}Installing VS Code extensions.${NC}\n";
  sudo -H -u $1 bash -c 'vscode --install-extension alefragnani.bookmarks';
  sudo -H -u $1 bash -c 'vscode --install-extension Angular.ng-template';
  sudo -H -u $1 bash -c 'vscode --install-extension EditorConfig.EditorConfig';
  sudo -H -u $1 bash -c 'vscode --install-extension christian-kohler.path-intellisense';
  sudo -H -u $1 bash -c 'vscode --install-extension DavidAnson.vscode-markdownlint';
  sudo -H -u $1 bash -c 'vscode --install-extension dbaeumer.vscode-eslint';
  sudo -H -u $1 bash -c 'vscode --install-extension eamodio.gitlens';
  sudo -H -u $1 bash -c 'vscode --install-extension eg2.tslint';
  sudo -H -u $1 bash -c 'vscode --install-extension eg2.vscode-npm-script';
  sudo -H -u $1 bash -c 'vscode --install-extension esbenp.prettier-vscode';
  sudo -H -u $1 bash -c 'vscode --install-extension gregorbiswanger.json2ts';
  sudo -H -u $1 bash -c 'vscode --install-extension infinity1207.angular2-switcher';
  sudo -H -u $1 bash -c 'vscode --install-extension jdforsythe.add-new-line-to-files';
  sudo -H -u $1 bash -c 'vscode --install-extension johnpapa.angular-essentials';
  sudo -H -u $1 bash -c 'vscode --install-extension johnpapa.Angular2';
  sudo -H -u $1 bash -c 'vscode --install-extension johnpapa.winteriscoming';
  sudo -H -u $1 bash -c 'vscode --install-extension medo64.render-crlf';
  sudo -H -u $1 bash -c 'vscode --install-extension mikestead.dotenv';
  sudo -H -u $1 bash -c 'vscode --install-extension ms-vsliveshare.vsliveshare';
  sudo -H -u $1 bash -c 'vscode --install-extension msjsdiag.debugger-for-chrome';
  sudo -H -u $1 bash -c 'vscode --install-extension natewallace.angular2-inline';
  sudo -H -u $1 bash -c 'vscode --install-extension PeterJausovec.vscode-docker';
  sudo -H -u $1 bash -c 'vscode --install-extension PKief.material-icon-theme';
  sudo -H -u $1 bash -c 'vscode --install-extension spywhere.guides';
  sudo -H -u $1 bash -c 'vscode --install-extension streetsidesoftware.code-spell-checker';
  sudo -H -u $1 bash -c 'vscode --install-extension tyriar.sort-lines';
  sudo -H -u $1 bash -c 'vscode --install-extension yzane.markdown-pdf';
  sudo -H -u $1 bash -c 'vscode --install-extension yzhang.markdown-all-in-one';
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
