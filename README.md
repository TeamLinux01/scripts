# A collection of bash scripts

## docker-images-updater.sh

Used to pull all images installed on a machine and then ask user to prune unused images.

Remember to stop, rm and recreate containers that have a new imaged pulled.

* ./docker-images-updater.sh

## create_sshkey_for_service.sh

Used to create a new rsa 4096bit key file for ssh.

* ./create_sshkey_for_service.sh "*Comment for key*" *filename*

* create or add the following to ~/.ssh/config file:

  * Host *server-name*
  * HostName *server-name*
  * User *user-name*
  * IdentityFile ~/.ssh/*filename*