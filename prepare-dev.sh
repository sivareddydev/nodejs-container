#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash
yum install -y nodejs
yum install -y npm
npm install -g mocha
