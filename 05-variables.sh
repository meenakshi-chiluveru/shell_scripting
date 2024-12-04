#!/bin/bash
#USERNAME=$1
#PASSWORD=$2

# echo "username is $USERNAME, password is $PASSWORD"

echo "please enter your username"
read -s USERNAME #the value entered above will be automatically attatched to USERNAME variable
# read -s will not show what we entering
echo "username is: $USERNAME" # i am printing just for validation, you should not print username and passwords in scripts


echo "please enter your password"
read -s PASSWORD
echo "username is $USERNAME,password is: $PASSWORD"