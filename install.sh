#!/bin/bash
sudo apt-get update
echo add repisitory
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt install openjdk-8-jdk
sudo apt install openjdk-8-source
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
cp burps.sh /opt/
cd /opt/
mkdir burp
echo download burp
cd /opt/burp/
wget https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=jar 
cp /opt/burps.sh /opt/burp/
sudo update-alternatives --install /usr/bin/burps burps /opt/burp/burps.sh 1
