#!/bin/bash

BAKUPFILE=scripts_backup.tar.gz

echo "Taking backup of $1"

echo "Archiving $1"
tar -czvf $BAKUPFILE $1

mv $BAKUPFILE $2

echo "Archive move to $2"

echo "Backup completed Successfuly."
