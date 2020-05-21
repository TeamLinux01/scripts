# Pop! OS setup

- [Pop! OS setup](#pop-os-setup)
  - [Purpose](#purpose)
  - [Usage](#usage)
  - [Installed applications](#installed-applications)
    - [Repository](#repository)
    - [Flatpak](#flatpak)
      - [Visual Studio Code Plug-ins](#visual-studio-code-plug-ins)
  - [Recommended applications](#recommended-applications)
    - [Firefox Extensions](#firefox-extensions)
  - [Recommended settings](#recommended-settings)
    - [Gnome Tweaks](#gnome-tweaks)
    - [System settings](#system-settings)
    - [Firefox settings](#firefox-settings)

## Purpose

This script installs several applications and sets up fish shell as default. Tested on Pop!_OS 20.04.

## Usage

sudo ./pop_os_setup.sh $USER

## Installed applications

### Repository

[apps.list](../pop_os_setup/lists/apps.list)

#### Extra apps for games

[extra_apps.list](../pop_os_setup/lists/extra_apps.list)

### Flatpak

[flatpak_apps.list](../pop_os_setup/lists/flatpak_apps.list)

#### Visual Studio Code Plug-ins

[vscode_extensions.list](./pop_os_setup/lists/../../../pop_os_setup/lists/vscode_extensions.list)

## Recommended applications

### Firefox Extensions

- [Github Repository Size](https://addons.mozilla.org/en-US/firefox/addon/github-repo-size/)
  - Add repositories size to their GitHub summary band using the GitHub public API.
- [KeePassXC-Browser](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
  - Official browser plugin for the KeePassXC password manager [keepassxc.org](https://keepassxc.org).
- [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
  - Add-on to display GitHub code in tree format
- [Refined GitHub](https://addons.mozilla.org/en-US/firefox/addon/refined-github-/)
  - Simplifies the GitHub interface and adds many useful features.
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
  - Finally, an efficient blocker. Easy on CPU and memory.

## Recommended settings
  
### Gnome Tweaks

- Extensions:
  - Desktop icons: **OFF**
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
- Details:
  - Users:
    - Automatic Login: **ON**

### Firefox settings

- Preferences:
  - General:
    - *Tabs* Ctrl+Tab cycles through tabs in recently used order: **OFF**
    - *Tabs* When you open a link in a new tab, switch to it immediately: **ON**
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
