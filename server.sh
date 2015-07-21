#!/usr/bin/env bash
sudo apt-get update

sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

sudo echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y vim

exit