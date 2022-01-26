#!/bin/bash

# install nodejs
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

# install verdaccio
npm config set registry https://registry.npm.taobao.org
sudo npm i -g verdaccio@latest
