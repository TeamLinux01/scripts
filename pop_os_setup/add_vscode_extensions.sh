#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

VSCODE_EXTENSIONS=(
  alefragnani.bookmarks
  Angular.ng-template
  EditorConfig.EditorConfig
  christian-kohler.path-intellisense
  DavidAnson.vscode-markdownlint
  dbaeumer.vscode-eslint
  eamodio.gitlens
  eg2.vscode-npm-script
  esbenp.prettier-vscode
  gregorbiswanger.json2ts
  infinity1207.angular2-switcher
  jdforsythe.add-new-line-to-files
  johnpapa.angular-essentials
  johnpapa.Angular2
  johnpapa.winteriscoming
  medo64.render-crlf
  mikestead.dotenv
  ms-vscode-remote.vscode-remote-extensionpack
  ms-vscode.vscode-typescript-tslint-plugin
  ms-vsliveshare.vsliveshare
  msjsdiag.debugger-for-chrome
  natewallace.angular2-inline
  PeterJausovec.vscode-docker
  PKief.material-icon-theme
  rust-lang.rust
  spywhere.guides
  streetsidesoftware.code-spell-checker
  tyriar.sort-lines
  yzane.markdown-pdf
  yzhang.markdown-all-in-one
  )

if [ -z "$1" ];then

  printf "Usage:
    ./pop_os_setup.sh $USER\n";
  exit
else

  printf "${GREEN}Installing VS Code extensions.${NC}\n";
  for extension in "${VSCODE_EXTENSIONS[@]}"
  do

    sudo -H -u $1 bash -c 'code --install-extension $extension';
  done

  printf "\n${GREEN}$0${NC} ${LGREEN}Completed${NC}\n\n";
fi
