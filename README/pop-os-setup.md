# Pop OS Setup

- [Pop OS Setup](#pop-os-setup)
  - [Purpose](#purpose)
  - [Usage](#usage)
  - [Installed applications](#installed-applications)
    - [Repository](#repository)
    - [SNAP](#snap)
      - [Visual Studio Code Plug-ins](#visual-studio-code-plug-ins)
  - [Recommended applications](#recommended-applications)
    - [Pop!_Shop](#popshop)
    - [Firefox Extensions](#firefox-extensions)
    - [Gnome Extensions](#gnome-extensions)
  - [Recommended settings](#recommended-settings)
    - [Gnome Tweaks](#gnome-tweaks)
    - [System settings](#system-settings)
    - [Firefox settings](#firefox-settings)

## Purpose

This script installs several applications and sets up fish shell as default. Tested on Pop!_OS 19.04.

## Usage

sudo ./pop_os_setup.sh $USER *Docker-Compose-Version* *Docker-Machine-Version*

## Installed applications

### Repository

- aptitude
- Audacious
- cpufrequtils
- Docker
- Fish shell
- GameMode
- Gnome Tweaks
- gparted
- htop
- lm-sensors
- mesa-utils
- ncdu
- neofetch
- nload
- openjdk-8-jre
- ovmf
- p7zip-full
- pinentry-tty
- powertop
- Timeshift backup
- tree
- Solaar
- virt-manager
- vulkan-utils
- zfs-initramfs
- zfsutils-linux

### SNAP

- Audacity
- Discord
- Gimp
- Gnome Twitch
- Inkscape
- KeePassXC
- Krita
- LibreOffice
- Log File Navigator
- Nextcloud client
- OBS Studio
- Shotcut
- Skrooge
- SNAP Store
- Spotify
- Telegram Desktop
- VLC
- Visual Studio Code

#### Visual Studio Code Plug-ins

- alefragnani.bookmarks
- Angular.ng-template
- EditorConfig.EditorConfig
- christian-kohler.path-intellisense
- DavidAnson.vscode-markdownlint
- dbaeumer.vscode-eslint
- eamodio.gitlens
- eg2.tslint
- eg2.vscode-npm-script
- esbenp.prettier-vscode
- gregorbiswanger.json2ts
- infinity1207.angular2-switcher
- jdforsythe.add-new-line-to-files
- johnpapa.angular-essentials
- johnpapa.Angular2
- johnpapa.winteriscoming
- medo64.render-crlf
- mikestead.dotenv
- ms-vsliveshare.vsliveshare
- msjsdiag.debugger-for-chrome
- natewallace.angular2-inline
- PeterJausovec.vscode-docker
- PKief.material-icon-theme
- rust-lang.rust
- spywhere.guides
- streetsidesoftware.code-spell-checker
- tyriar.sort-lines
- yzane.markdown-pdf
- yzhang.markdown-all-in-one

## Recommended applications

### Pop!_Shop

- Lutris
- Steam

### Firefox Extensions

- [Adblock Plus](https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/)
- [Github Repository Size](https://addons.mozilla.org/en-US/firefox/addon/github-repo-size/)
- [GNOME Shell integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)
- [KeePassXC-Browser](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
- [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
- [Refined GitHub](https://addons.mozilla.org/en-US/firefox/addon/refined-github-/)
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

### Gnome Extensions

- [cpufreq by konkor](https://extensions.gnome.org/extension/1082/cpufreq/)
- [GSConnect by andyholmes](https://extensions.gnome.org/extension/1319/gsconnect/)
- [gTile by scherepanov](https://extensions.gnome.org/extension/28/gtile/)
- [Hide Top Bar by tuxor1337](https://extensions.gnome.org/extension/545/hide-top-bar/)
- [(K)StatusNotifierItem/AppIndicator Support by 3v1n0](https://extensions.gnome.org/extension/615/appindicator-support/)
- [Lock Keys by kazimieras.vaina](https://extensions.gnome.org/extension/36/lock-keys/)
- [LAN IP Address by Josholith](https://extensions.gnome.org/extension/1762/lan-ip-address/)
- [NoAnnoyance by sindex](https://extensions.gnome.org/extension/1236/noannoyance/)
- [Sound Input & Output Device Chooser by kgshank](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)

## Recommended settings
  
### Gnome Tweaks

- Extensions:
  - Desktop icons: **OFF**
- Keyboard & Mouse:
  - *Mouse* Acceleration Profile: **Flat**
- Top Bar:
  - Application Menu: **OFF**
- Windows Titlebars:
  - *Titlebar Buttons* Maximize: **ON**
  - *Titlebar Buttons* Minimize: **ON**
- Windows
  - Center New Windows: **ON**

### System settings

- Appearance:
  - Dark Mode: **ON**
  - Slim Mode: **ON**
- Notifications:
  - Notification Popups: **OFF**
- Privacy:
  - Screen Lock:
    - Automatic Screen Lock: **OFF**
- Power:
  - *Power Saving* Blank screen: **Never**
- Devices:
  - Mouse & Touchpad:
    - *Mouse* Mouse Acceleration: **OFF**
    - *Mouse* Natural Scrolling: **ON**
    - *Touchpad* Natural Scrolling: **ON**
    - *Touchpad* Tap to Click: **OFF**
  - Removable Media:
    - Never prompt or start programs on media insertion: **CHECKED**
- Details:
  - Users:
    - Automatic Login: **ON**

### Firefox settings

- Preferences:
  - General:
    - *Tabs* Ctrl+Tab cycles through tabs in recently used order: **OFF**
    - *Tabs* When you open a link in a new tab, switch to it immediately: **ON**
    - *Browsing* Use autoscrolling: **OFF**
    - *Browsing* Use smooth scrolling: **OFF**
    - *Browsing* Recommend extensions as you browse: **OFF**
  - Home:
    - *Firefox Home Content* Top Sites: **OFF**
    - *Firefox Home Content* Recommended by Pocket: **OFF**
    - *Firefox Home Content* Highlights: **OFF**
    - *Firefox Home Content* Snippets: **OFF**
  - Search:
    - *Search Bar* Add search bar in toolbar: **Selected**
    - *Default Search Engine* DuckDuckGo: **Selected**
  - Privacy & Security:
    - *Content Blocking* Strict: **Selected**
    - *Content Blocking* Send websites a "Do Not Track" signal that you don't want to be tracked: **Always**
    - *Logins & Passwords* Ask to save logins and passwords for websites: **OFF**
    - *Forms & Autofill* Autofill addresses: **OFF**
    - *Permissions* Prevent accessibility services from accessing your browser: **ON**
    - *Firefox Data Collection and Use* Allow Firefox to send technical and interaction data to Mozilla: **OFF**
