#!/bin/bash
source .env;

printf "docker tag $1 ${registry_name}/$1\n";

docker tag $1 ${registry_name}/$1 \
 && docker push ${registry_name}/$1;