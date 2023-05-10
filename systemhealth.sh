#!/bin/bash

echo "Welecome $USER on $HOSTNAME."
echo "################################################"

#User $ parenthesis for command Substitution.
FREERAM=$(free -m | grep Mem | awk '{print $4}')
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

#User back quote for command Substitution.
LOAD=`uptime | awk '{print $9}'`

echo "###############################################"
echo "Available free RAM is $FREERAM MB"
echo "###############################################"
echo "Free ROOT partiotion size is $ROOTFREE"
echo "###############################################"
echo "Current Load Average $LOAD"
