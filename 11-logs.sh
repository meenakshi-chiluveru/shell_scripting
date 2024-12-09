#!/bin/bash

ID=$(id -u)
timestamp=$(date +%F-%H-%M-%S)

logfile="/tmp/$0-$timestamp.log" # special variables will work in double quotes
validate(){
  if [ $1 -ne 0 ]
  then
    echo "ERROR::$2 .. failed"
    exit 1
  else
    echo "$2 ..  is success"
  fi
}
if [ $ID -ne 0 ]
then
  echo "ERROR:: please run this script with root access"
  exit 1 # we can give other than 0
else
  echo "you are root user"
fi # fi is end of conditional programme

yum install mysql -y &>> $logfile
validate $? "installing mysql" # $1 is exit status $2 is installing mysql or git

yum install git -y &>> $logfile
validate $? "installing git"