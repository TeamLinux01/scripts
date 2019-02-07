#!/bin/bash
export hostname=localhost
export mysql_password=change_me
export mysql_root_password=change_me
export smbpassword=password
export smbuser=user
echo -e "Set these variables for docker environments:\nhostname: $hostname\nmysql_password: $mysql_password\nmysql_root_password: $mysql_root_password\nsmbpassword: $smbpassword\nsmbuser: $smbuser"
docker-compose up -d