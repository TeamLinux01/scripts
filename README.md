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

Remember to stop, rm and recreate containers that have a new imaged pulled.

* ./docker-images-updater.sh

## docker-up_env.sh

Used to set enviromentable variables for docker-compose projects

* Copy the docker-up_env.sh to the folder above the docker projects
* Edit the docker-up_env.sh to have the proper settings, then run the script for the docker project's folder
  * ../docker-up_env.sh

## docker-down_env.sh

Used to spin down docker-compose with enviromentable variables

* Copy the docker-down_env.sh to the folder above the docker projects
* Edit the docker-down_env.sh to have the proper settings, then run the script for the docker project's folder
  * ../docker-down_env.sh

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

* Firefox Extentions to install afterwards:
  * [Adblock Plus](https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/)
  * [Github Repository Size](https://addons.mozilla.org/en-US/firefox/addon/github-repo-size/)
  * [GNOME Shell integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)
  * [KeePassXC-Browser](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
  * [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
  * [Refined GitHub](https://addons.mozilla.org/en-US/firefox/addon/refined-github-/)
  * [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

* Gnome Extentions to install afterwards:
  * [GSConnect by andyholmes](https://extensions.gnome.org/extension/1319/gsconnect/)
  * [(K)StatusNotifierItem/AppIndicator Support by 3v1n0](https://extensions.gnome.org/extension/615/appindicator-support/)
