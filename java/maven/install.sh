#!/bin/bash

# Download maven tar.gz
wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.tar.gz

# Exract tar.gz
tar xzvf apache-maven-3.8.7-bin.tar.gz

# Remove tar.gz
rm apache-maven-3.8.7-bin.tar.gz

# Move mvn into opt folder
sudo mv apache-maven-3.8.7 /opt/mvn

# Add Maven bin on $PATH
echo 'export PATH=/opt/mvn/bin:$PATH' | tee -a  ~/.profile > /dev/null
export PATH=/opt/mvn/bin:$PATH
# Check Maven version
mvn --version
