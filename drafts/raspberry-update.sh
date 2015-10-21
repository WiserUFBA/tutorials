#!/bin/bash

# Utility to update and configure Raspberry Pi

# Check if there's connection with the internet
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -ne 0 ]]; then
    echo "We cannot check if theres internet connection! :/"
    exit 0
fi

# Update lists and upgrade packages
apt-get update && apt-get upgrade -y
if [[ $? -ne 0 ]]; then
    echo "Something wrong occurs while update system! :/"
    exit 1
fi

# Upgrade Raspberry-Pi system
rpi-update
if [[ $? -ne 0 ]]; then
    echo "Something wrong occurs while update system! :/"
    exit 0
fi


