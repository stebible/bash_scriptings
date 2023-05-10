#!/bin/bash

# Need to have a user "admin with pwd in sever.
# Create a file "webnodeIP.txt in scriptServer

read -p 'Enter command to execute on remote machine.' COMMAND
echo "Executing $COMMAND on all the WEBNODEs."

for IP in $ (cat webnodeIP.txt);
do
  echo "##############################################"
  echo "Executing command on $IP"
  echo "##############################################"
  ssh admin@$IP $COMMAND
done
