#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    echo "You can Try comand 'su root' or 'sudo -i' or 'sudo -'"
    exit 1
fi

apt update
apt upgrade -y
apt install iodine
apt install libz-dev
iodined  -f -c -P [password] 192.168.77.1 s.testeroni.com
