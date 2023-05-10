#!/bin/bash

BAKUPFILE=scripts_backup.tar.gz

echo "Welecome USER $USER"
echo "We are running script on $HOSTNAME"
echo "################################"

echo " You have passed $# arguments"
echo "#################################"

echo "Below mentioned the arguments that you passed:"

echo $@
echo "################################"


echo "Taking backup of $1"

echo "Archiving $1"
tar -czvf $BAKUPFILE $1
echo "Exit code of arhiving is $?"
echo "#####################################"

mv $BAKUPFILE $2
echo "Exit code of moving backup is $?"
echo "#####################################"

echo "Archive move to $2"

echo "Process ID of the current script is $$"
#sleep 5
echo "########################################"
echo "Backup completed Successfuly."

sleep 5
echo "It took $SECOND seconds time."

