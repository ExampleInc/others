#!/bin/bash

cat << EOF > /etc/resolv.conf
nameserver 8.8.8.8
EOF

cat << EOF > /etc/hosts
127.0.0.1 localhost

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
10.0.0.11 chefserver01.example.com chefserver01
EOF

# Ubuntu x86_64 is only supported at the moment
URL='https://packages.chef.io/stable/ubuntu/12.04/chef_12.12.15-1_amd64.deb'; FILE=`mktemp`; wget "$URL" -qO $FILE && sudo dpkg -i $FILE; rm $FILE


