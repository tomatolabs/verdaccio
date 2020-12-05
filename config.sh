#!/bin/bash

# create a system user for sinopia daemon
sudo useradd -r sinopia

# install sinopia service
sudo cp sinopia /etc/init.d/sinopia
sudo chmod +x /etc/init.d/sinopia

# config sinopia
sudo mkdir /etc/sinopia
sudo mkdir /etc/sinopia/storage
sudo cp config.yaml /etc/sinopia/
sudo chown sinopia:sinopia /etc/sinopia/ -R
sudo chmod g+w /etc/sinopia/storage

# sudo /etc/init.d/sinopia start
