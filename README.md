# A collection of bash scripts

## create_sshkey_for_service.sh

Used to create a new rsa 4096bit key file for ssh.

* ./create_sshkey_for_service.sh *server-hostname* *username*

* The script will create the ssl-key in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  * Host *server-hostname*
  * HostName *server-hostname*
  * User *username*
  * IdentityFile ~/.ssh/*ssl-key*

## docker-images-updater.sh

Used to pull all images installed on a machine and then ask user to prune unused images.

Remember to stop, rm and re-create containers that have a new imaged pulled.

* ./docker-images-updater.sh

## docker_sync_tag.sh

Used to update an image tag to point to a local registry, then push that image to that registry.

* ./docker_sync_tag.sh *image-name*:*tag*
  * Copy the .env.example to .env and change its value to your registry server's host-name.

## dc_up.sh

Used to spin up docker containers using docker-compose, re-creates containers if a new image is pulled.

* Runs docker-compose up -d --build
  * ./dc_up.sh

## dc_down.sh

Used to spin down docker containers using docker-compose.

* Runs docker-compose down, you can supply an argument, such as -v to remove volumes
  * ./dc_down.sh

## install_docker-compose.sh

Used to install/update docker-compose.

* sudo ./install_docker-compose.sh *version-number*

## install_docker-machine.sh

Used to install/update docker-machine.

* sudo ./install_docker-machine.sh *version-number*

## Pop_OS_Setup.sh

* Installs several applications and sets up fish shell as default. Tested on Pop!_OS 18.10
  * sudo ./Pop!_OS_Setup.sh $USER *Docker-Compose-Version* *Docker-Machine-Version*
* Amarok
* Docker
* Fish shell
* ncdu
* pinentry-tty
* Timeshift backup
* tree
* SNAPs
  * Discord
  * LibreOffice
  * Nextcloud client
  * OBS Studio
  * Spotify
  * Telegram Desktop
  * VLC
  * Visual Studio Code
    * Angular.ng-template
    * EditorConfig.EditorConfig
    * christian-kohler.path-intellisense
    * DavidAnson.vscode-markdownlint
    * dbaeumer.vscode-eslint
    * eamodio.gitlens
    * eg2.tslint
    * eg2.vscode-npm-script
    * esbenp.prettier-vscode
    * johnpapa.angular-essentials
    * johnpapa.Angular2
    * johnpapa.winteriscoming
    * mikestead.dotenv
    * msjsdiag.debugger-for-chrome
    * natewallace.angular2-inline
    * PeterJausovec.vscode-docker
    * PKief.material-icon-theme
    * yzane.markdown-pdf
    * yzhang.markdown-all-in-one

* Firefox Extensions to install afterwards:
  * [Adblock Plus](https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/)
  * [Github Repository Size](https://addons.mozilla.org/en-US/firefox/addon/github-repo-size/)
  * [GNOME Shell integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)
  * [KeePassXC-Browser](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
  * [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
  * [Refined GitHub](https://addons.mozilla.org/en-US/firefox/addon/refined-github-/)
  * [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

* Gnome Extensions to install afterwards:
  * [AlternateTab by fmuellner](https://extensions.gnome.org/extension/15/alternatetab/)
  * [GSConnect by andyholmes](https://extensions.gnome.org/extension/1319/gsconnect/)
  * [(K)StatusNotifierItem/AppIndicator Support by 3v1n0](https://extensions.gnome.org/extension/615/appindicator-support/)
