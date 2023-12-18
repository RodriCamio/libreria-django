#!/bin/bash

# GIT INSTALL AND UPDATE
sudo apt-get update
sudo apt-get install git

# DOCKER INSTALL
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh --dry-run
sudo sh get-docker.sh

# USE DOCKER WITHOUT SUDO
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker

# HADOLINT INSTALL
sudo apt-get install hadolint

# JENKINS INSTALL
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y fontconfig openjdk-17-jre
sudo apt-get install -y jenkins

# USE JENKINS WITHOUT SUDO
sudo groupadd docker
sudo usermod -aG docker jenkins
newgrp docker
