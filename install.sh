#!/bin/bash

curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

npm config set registry https://registry.npm.taobao.org
npm i -g yarn
yarn config set registry https://registry.npm.taobao.org
yarn global add sinopia
