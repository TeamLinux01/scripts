#!/bin/bash

GREEN='\033[0;32m';
LGREEN='\033[1;32m';
RED='\033[0;31m';
NC='\033[0m'; #No Color

printf "About to remove empty ~/Documents ~/Music ~/Pictures ~/Videos, create ~/Nextcloud, create symbolic links.\n";
read -p "Continue (y/n)?" choice
case "$choice" in
y|Y )
    rmdir ~/Documents ~/Music ~/Pictures ~/Videos;
    mkdir ~/Nextcloud;
    ln -s ~/Nextcloud/Documents ~/Documents;
    ln -s ~/Nextcloud/Music ~/Music;
    ln -s ~/Nextcloud/Pictures ~/Pictures;
    ln -s ~/Nextcloud/Videos ~/Videos;
    printf "Done.\n";;
n|N )
    printf "${RED}Aborted.${NC}\n";;
* )
    printf "${RED}Aborted.${NC}\n";;
esac;
