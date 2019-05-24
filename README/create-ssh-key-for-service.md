# Create SSH key for service

- [Create SSH key for service](#create-ssh-key-for-service)
  - [Purpose](#purpose)
  - [Usage](#usage)

## Purpose

This script creates a new rsa 4096bit key file for ssh service.

## Usage

./create_ssh_key_for_service.sh *server-hostname* *username*

- The script will create the ssl-key in the format *username*@*server-hostname* in the ~/.ssh folder and add the following to ~/.ssh/config file:

  - Host *server-hostname*
  - HostName *server-hostname*
  - User *username*
  - IdentityFile ~/.ssh/*ssl-key*
