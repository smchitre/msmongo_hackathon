#!/bin/bash

sudo service mongod stop

sudo yum erase $(rpm -qa | grep mongodb-org) -y

sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongo

sudo rm -rf ~/.nvm

sudo python3 -m pip uninstall -y pymongo

sudo yum erase java-11-openjdk-devel -y


