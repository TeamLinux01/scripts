#!/bin/bash
#creates a new ssl key, then adds it to the ssh agent
#argument 1 ($1) server-hostname

if [[ $# -ne 1 ]] ; then #display an error if both arguments are not entered
    printf "Missing argument: server-hostname\nExample:\n\n$0 server-hostname\n";
    exit 1
fi

openssl req -x509 -out $1.crt -keyout $1.key -newkey rsa:2048 -nodes -days 1825 -sha256;
