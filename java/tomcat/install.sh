#!/bin/bash
$version
if [ $1 -eq 9 ];
then

#todo fix version
version="9.0.71"
else
version="10.0.27"
fi
wget https://dlcdn.apache.org/tomcat/tomcat-$1/v${version}/bin/apache-tomcat-${version}.tar.gz

# Extraxt
tar xzvf apache-tomcat-${version}.tar.gz

# Move to opt
sudo mv apache-tomcat-$version /opt/tomcat9

# Remove .tar.gz
rm apache-tomcat-${version}.tar.gz

# Change permission
sudo chmod -R 755 /opt/tomcat9/

sh deployer-installer.sh