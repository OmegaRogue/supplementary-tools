#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "This script needs to be run as root"
   exit 1
fi
apt-get -y install dirmngr
echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update
apt-get -y install ansible
