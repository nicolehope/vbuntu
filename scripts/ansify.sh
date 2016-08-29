#!/bin/bash

RELEASE=$(lsb_release -c | awk '{print $2}')

case $RELEASE in
trusty)
    sudo apt-get install openssh-server
;;
xenial)
    sudo apt-get install openssh-server python python-apt
;;
*)
    echo "Unsupported release."
    exit 1
;;
esac

echo "Now add your keys and deploy"
