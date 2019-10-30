# Pop! OS setup

- [Pop! OS setup](#pop-os-setup)
  - [Purpose](#purpose)
  - [Usage](#usage)
  - [Installed applications](#installed-applications)
    - [Repository](#repository)
    - [SNAP](#snap)
      - [Visual Studio Code Plug-ins](#visual-studio-code-plug-ins)
  - [Recommended applications](#recommended-applications)
    - [Pop! Shop](#pop-shop)
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

- cpufrequtils
- Fish shell
- Gnome Tweaks
- gparted
- htop
- lm-sensors
- ncdu
- neofetch
- nload
- nextcloud-desktop
- openjdk-8-jre
- p7zip-full
- pinentry-tty
- tree
- Solaar
- zfs-initramfs
- zfsutils-linux

### SNAP

- KeePassXC
- LibreOffice
- Log File Navigator
- SNAP Store
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
- ms-vscode-remote.vscode-remote-extensionpack
- ms-vscode.vscode-typescript-tslint-plugin
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

### Pop! Shop

- Lutris
- Steam

### Firefox Extensions

- [Adblock Plus](https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/)
  - Blocks annoying video ads on YouTube, Facebook ads, banners and much more.
  - Adblock Plus blocks all annoying ads, and supports websites by not blocking unobtrusive ads by default (configurable).
- [Github Repository Size](https://addons.mozilla.org/en-US/firefox/addon/github-repo-size/)
  - Add repositories size to their GitHub summary band using the GitHub public API.
- [GNOME Shell integration](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)
  - This extension provides integration with GNOME Shell and the corresponding extensions repository [extensions.gnome.org](https://extensions.gnome.org)
- [KeePassXC-Browser](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
  - Official browser plugin for the KeePassXC password manager [keepassxc.org](https://keepassxc.org).
- [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
  - Add-on to display GitHub code in tree format
- [Refined GitHub](https://addons.mozilla.org/en-US/firefox/addon/refined-github-/)
  - Simplifies the GitHub interface and adds many useful features.
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
  - Finally, an efficient blocker. Easy on CPU and memory.

### Gnome Extensions

- [cpufreq by konkor](https://extensions.gnome.org/extension/1082/cpufreq/)
  - Gnome CPU Frequency Monitor and Governor Manager.
  - This is a lightweight CPU frequency scaling monitor and powerful CPU management tool. The extension is using standard cpufreq kernel modules to collect information and manage governors. It needs root permission to able changing governors.
  - Features:
    - Compatible with many hardware architectures;
    - CPU Frequency monitoring;
    - CPU Governor management;
    - CPU Frequency speed limits;
    - CPU Boost supporting;
    - CPU Power on/off supporting;
    - Saving/Restoring settings...
- [GSConnect by andyholmes](https://extensions.gnome.org/extension/1319/gsconnect/)
  - GSConnect is a complete implementation of KDE Connect especially for GNOME Shell with Nautilus, Chrome and Firefox integration. It does not rely on the KDE Connect desktop application and will not work with it installed.
  - KDE Connect allows devices to securely share content like notifications or files and other features like SMS messaging and remote control. The KDE Connect team has applications for Linux, BSD, Android, Sailfish and Windows.
  - KDE Connect Indicator can support Gtk desktops other than GNOME Shell.
- [(K)StatusNotifierItem/AppIndicator Support by 3v1n0](https://extensions.gnome.org/extension/615/appindicator-support/)
  - Adds KStatusNotifierItem support to the Shell
- [Lock Keys by kazimieras.vaina](https://extensions.gnome.org/extension/36/lock-keys/)
  - Numlock & Capslock status on the panel
- [LAN IP Address by Josholith](https://extensions.gnome.org/extension/1762/lan-ip-address/)
  - Show LAN IP address on GNOME panel. Do not show loopback addresses (127.0.0.0/8) or Docker networks.
- [NoAnnoyance by sindex](https://extensions.gnome.org/extension/1236/noannoyance/)
  - Removes the 'Windows is ready' notification and puts the window into focus.
- [Sound Input & Output Device Chooser by kgshank](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
  - Shows a list of sound output and input devices (similar to gnome sound settings) in the status menu below the volume slider. Various active ports like HDMI , Speakers etc. of the same device are also displayed for selection. V20+ needs python as dependency. If you want to continue with the old method without Python, use options to switch off New Port identification. But it works with only English
- [Vitals by corecoding](https://extensions.gnome.org/extension/1460/vitals/)
  - A glimpse into your computer's temperature, voltage, fan speed(rpm), memory(ram) usage, processor load, uptime, network speed, public ip address and hard drive storage stats. This is a one stop shop to monitor all of your vital sensors and system resources. Uses asynchronous polling to provide a smooth user experience.
  - FAQ: Click sensors in drop-down menu to show/hide in panel menu!

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
