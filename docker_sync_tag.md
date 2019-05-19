# docker sync tag

- [docker sync tag](#docker-sync-tag)
  - [Purpose](#purpose)
  - [Usage](#usage)

## Purpose

This script updates an image tag to point to a local registry, then push that image to that registry.

## Usage

./docker_sync_tag.sh *image-name*:*tag*

- Copy the .env.example to .env and change its value to your registry server's host-name.
