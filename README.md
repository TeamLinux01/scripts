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

## docker_run.sh

Run a docker container with audio/video capabilites. Removes the container on exit.

* ./docker_run.sh *image-name*:*tag*

## dc_up.sh

Used to spin up docker containers using docker-compose, re-creates containers if a new image is pulled.

* Runs docker-compose up -d --build
  * ./dc_up.sh

## dc_down.sh

Used to spin down docker containers using docker-compose.

* Runs docker-compose down, you can supply an argument, such as -v to remove volumes
  * ./dc_down.sh

## install_docker-ce.sh

Used to install docker community edition on an Ubuntu based system.

* sudo ./install_docker-ce.sh $USER

## install_docker-compose.sh

Used to install/update docker-compose.

* sudo ./install_docker-compose.sh *version-number*

## install_docker-machine.sh

Used to install/update docker-machine.

* sudo ./install_docker-machine.sh *version-number*

## Pop_OS_Setup.sh

* Installs several applications and sets up fish shell as default. Tested on Pop!_OS 18.10
  * sudo ./Pop!_OS_Setup.sh $USER *Docker-Compose-Version* *Docker-Machine-Version*

* aptitude
* Audacious
* cpufreqctl
* Docker
* Fish shell
* GameMode
* gparted
* htop
* lm-sensors
* ncdu
* neofetch
* nload
* ovmf
* pinentry-tty
* powertop
* Timeshift backup
* tree
* SNAPs
  * Audacity
  * Discord
  * Gimp
  * Gnome Tweaks
  * Gnome Twitch
  * Inkscape
  * Krita
  * LibreOffice
  * Log File Navigator
  * Nextcloud client
  * OBS Studio
  * Shotcut
  * Skrooge
  * SNAP Store
  * Spotify
  * Telegram Desktop
  * VLC
  * Visual Studio Code
    * alefragnani.bookmarks
    * Angular.ng-template
    * EditorConfig.EditorConfig
    * christian-kohler.path-intellisense
    * DavidAnson.vscode-markdownlint
    * dbaeumer.vscode-eslint
    * eamodio.gitlens
    * eg2.tslint
    * eg2.vscode-npm-script
    * esbenp.prettier-vscode
    * gregorbiswanger.json2ts
    * infinity1207.angular2-switcher
    * jdforsythe.add-new-line-to-files
    * johnpapa.angular-essentials
    * johnpapa.Angular2
    * johnpapa.winteriscoming
    * medo64.render-crlf
    * mikestead.dotenv
    * ms-vsliveshare.vsliveshare
    * msjsdiag.debugger-for-chrome
    * natewallace.angular2-inline
    * PeterJausovec.vscode-docker
    * PKief.material-icon-theme
    * spywhere.guides
    * streetsidesoftware.code-spell-checker
    * tyriar.sort-lines
    * yzane.markdown-pdf
    * yzhang.markdown-all-in-one
* Solaar
* virt-manager
* vulkan-utils
* zfs-initramfs
* zfsutils-linux

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
  * [cpufreq by konkor](https://extensions.gnome.org/extension/1082/cpufreq/)
  * [GSConnect by andyholmes](https://extensions.gnome.org/extension/1319/gsconnect/)
  * [gTile by scherepanov](https://extensions.gnome.org/extension/28/gtile/)
  * [Hide Top Bar by tuxor1337](https://extensions.gnome.org/extension/545/hide-top-bar/)
  * [(K)StatusNotifierItem/AppIndicator Support by 3v1n0](https://extensions.gnome.org/extension/615/appindicator-support/)
  * [Lock Keys by kazimieras.vaina](https://extensions.gnome.org/extension/36/lock-keys/)
  * [NoAnnoyance by sindex](https://extensions.gnome.org/extension/1236/noannoyance/)
  * [Sound Input & Output Device Chooser by kgshank](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)

* Apps installed from Pop!_Shop:
  * Lutris
  * Steam

* Manual changes:
  * Change **DefaultLimitNOFILE=524288** in
    * /etc/systemd/system.conf
    * /etc/systemd/user.conf
  * *ulimit -Hn* to check Esync file limit
  * Gnome Tweaks:
    * Desktop:
      * Show Icons: **OFF**
    * Top Bar:
      * Application Menu: **OFF**
      * *Clock* Weekday: **OFF**
    * Windows Titlebars:
      * *Titlebar Buttons* Maximize: **ON**
      * *Titlebar Buttons* Minimize: **ON**
      * *Titlebar Buttons* Placement: **Right**
  * Settings:
    * Appearance: 
      * Dark Mode: **ON**
      * Slim Mode: **ON**
    * Notifications:
      * Notification Popups: **OFF**
    * Privacy:
      * Screen Lock:
        * Automatic Screen Lock: **OFF**
    * Power:
      * *Power Saving* Blank screen: **Never**
    * Devices:
      * Mouse & Touchpad:
        * *Mouse* Natural Scrolling: **ON**
        * *Touchpad* Natural Scrolling: **ON**
        * *Touchpad* Tap to Click: **OFF**
      * Removable Media:
        * Never prompt or start programs on media insertion: **CHECKED**
    * Details:
      * Users:
        * Automatic Login: **ON**
