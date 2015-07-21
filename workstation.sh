#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y git

sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

sudo echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y vim
sudo apt-get install -y unzip
sudo wget https://services.gradle.org/distributions/gradle-2.3-bin.zip
sudo unzip gradle-2.3-bin.zip -d /usr/local/

sudo echo 'GRADLE_HOME=/usr/local/gradle-2.3' >> /etc/profile.d/gradle.sh
sudo echo 'PATH=$PATH:$GRADLE_HOME/bin' >> /etc/profile.d/gradle.sh
sudo chmod 755 /etc/profile.d/gradle.sh

exit