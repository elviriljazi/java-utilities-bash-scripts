#!/bin/bash

# Add repository
 wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
 sudo add-apt-repository 'deb https://apt.corretto.aws stable main'

# Install coretto
  sudo apt-get update; sudo apt-get install -y java-11-amazon-corretto-jdk

# Check java version

java --version


sh ./maven/install.sh
sh ./tomcat/install.sh
