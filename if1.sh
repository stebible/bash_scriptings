#!/bin/bash

read -p "Enter a number: " NUM
echo
echo "You have enterd $NUM"

if [ $NUM -gt 100 ]
then
  echo "We entered in IF block"
  sleep 5
  echo "You Number is greater than 100"
  echo
  date
else
  echo "You have entered number less than 100"
fi

echo "Out ot IF block"
echo "script execution completed successfully."

