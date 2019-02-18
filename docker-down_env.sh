#!/bin/bash
export email_address='email@company.non'
export email_password='email_password_change_me'
export GID='1000'
export host_ip='0.0.0.0'
export hostname='localhost'
export mysql_password='mysql_password_change_me'
export mysql_root_password='mysql_root_password_change_me'
export netcache-dns_ip='127.0.0.1'
export netcache-proxy_ip='120.0.0.1'
export pihole_ip='127.0.0.1'
export smbpassword='smbpassword_change_me'
export smbuser='user'
export smtp_host='email.hostname'
export smtp_port='465'
export UID='1000'
echo -e "Set these variables for docker environments:
email_address: $email_address
email_password: $email_password
GID: $GID
host_ip: $host_ip
hostname: $hostname
mysql_password: $mysql_password
mysql_root_password: $mysql_root_password
netcache-dns_ip: $netcache-dns_ip
netcache-proxy_ip: $netcache-proxy_ip
pihole_ip: $pihole_ip
smbpassword: $smbpassword
smbuser: $smbuser
smtp_host: $smtp_host
smtp_port: $smtp_port
UID: $UID"
docker-compose down $1