#!/bin/bash

#This script is to setup $SVC

#Decalring Variable
#SVC=httpd
#WEBURL=https://www.tooplate.com/download/2133_moso_interior
#PACKS='httpd wget unzip'

read -p "Enter SVC NAME: " SVC
read -p "Enter URL: " WEBURL
read -p "Enter Package names separated by space: " PACKS
read -p "Enter Dir Name: " WEBDIR

#setup package
echo
echo "Installing packages"
yum install $PACKS -y
echo "###############################################################"

#Start & Enable Service
echo
echo "Starting and Enabling Service"
systemctl start $SVC
systemctl enable $SVC
echo "#################################################################"

#Copy website data to apache Doc Root Dir.
echo
echo "Copying website data"
cd /tmp && wget -o website.zip $WEBURL
cd /tmp/ && unzip website.zip
cp -r /tmp/$WEBDIR/* /var/www/html/
echo "##################################################################"


#Restart Service
echo
echo "Restarting srevice"
systemctl restart $SVC

