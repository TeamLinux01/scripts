#!/bin/bash
export GID='1000'
export hostname='localhost'
export mysql_password='change_me'
export mysql_root_password='change_me'
export smbpassword='password'
export smbuser='user'
export UID='1000'
echo -e "Set these variables for docker environments:\nGID: $GID\nhostname: $hostname\nmysql_password: $mysql_password\nmysql_root_password: $mysql_root_password\nsmbpassword: $smbpassword\nsmbuser: $smbuser\nUID: $UID"
docker-compose up -d --build