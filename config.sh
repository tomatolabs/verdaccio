#!/bin/bash

# create a system user for verdaccio daemon
sudo useradd -r verdaccio

# install verdaccio service
sudo cp verdaccio /etc/init.d/verdaccio
sudo chmod +x /etc/init.d/verdaccio

# config verdaccio
sudo mkdir /etc/verdaccio
sudo mkdir /etc/verdaccio/storage
sudo cp config.yaml /etc/verdaccio/
sudo chown verdaccio:verdaccio /etc/verdaccio/ -R
sudo chmod g+w /etc/verdaccio/storage

# sudo /etc/init.d/verdaccio start|stop|restart|status
alias vnpm='sudo /etc/init.d/verdaccio'
