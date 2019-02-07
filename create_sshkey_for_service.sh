#!/bin/bash
#creates a new key with the comment of first option and name of second option, then adds it to the ssh agent
ssh-keygen -t rsa -b 4096 -C "$1" -f ~/.ssh/$2 && ssh-add ~/.ssh/$2