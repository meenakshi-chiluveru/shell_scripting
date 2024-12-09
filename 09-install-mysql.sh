#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
  echo "ERROR:: please run this script with root access"
  exit 1 # we can give other than 0
else
  echo "you are root user"
fi # fi is end of conditional programme

yum install mysql -y