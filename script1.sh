#!/bin/bash
#Description: "This is the script to automate sonarQube server installation on CentOs 7 server"
# Author: Augustine
#Date: 23-Feb-2022
echo " This is a command to update he packages on your system and also remove obselete packages "
echo
sudo yum update -y
sleep 2
echo " This command is to install java "
echo 
sudo yum install java-11-openjdk-devel -y
sleep 2
echo " This is another command to install java "
echo
sudo yum install java-11-openjdk -y
sleep 2
echo "  First we cd /opt  directory "
echo  
echo " command to install wget package If it is not already install"
echo
sudo yum install wget -y 
echo
echo " This command is to download SonarQube latest versions in your server "
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip01~
sleep 2
echo " command to extract packages "
sudo yum install unzip -y
sleep 2
echo
sudo unzip /opt/sonarqube-9.3.0.51899.zip01~
sleep 2
echo
echo " command to change ownership and switch to Linux binaries"
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2
echo
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
echo
echo " command to start SonaQube
echo
./sonar.sh start
echo
echo " steps to connect to the sonaQube server through the browser.
echo
sudo firewall-cmd --permanent --add-port=9000/tcp
sleep 2
echo
sudo firewall-cmd --reload
sleep 2
echo
echo " The installation is completed "
echo
echo " Thank you "


