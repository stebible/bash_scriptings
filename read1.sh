#!/bin/bash

#Read will take user input at run time
echo "Enter your skills:"
read SKILLS

echo "Your $SKILLS skills are very popular in IT Industry"

# -p make read as a prompt ans -sp not print the input  
read -p 'Username: ' USER
read -sp 'Password:' pass

echo "Login successfull: Welcome User $USER."
