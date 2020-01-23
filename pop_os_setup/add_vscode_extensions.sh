#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

readarray -t VSCODE_EXTENSIONS < `dirname $0`/lists/vscode_extensions.list;

if [ -z "$1" ];then

  printf "Usage:
    $0 \$USER\n";
  exit
else

  for extension in "${VSCODE_EXTENSIONS[@]}"
  do

    printf "${GREEN}sudo -H -u $1 bash -c code \"--install-extension $extension\"${NC}\n";
    sudo -H -u $1 bash -c "code --install-extension $extension";
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
