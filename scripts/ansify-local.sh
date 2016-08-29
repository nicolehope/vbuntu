#!/bin/bash

RELEASE=$(lsb_release -c | awk '{print $2}')

case $RELEASE in
trusty)
    echo -n ''
;;
xenial)
    sudo apt-get install python python-apt
;;
*)
    echo "Unsupported release."
    exit 1
;;
esac

sudo apt-get install openssh-server python-software-properties ppa-purge git
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

echo "Now clone your repo and deploy"
