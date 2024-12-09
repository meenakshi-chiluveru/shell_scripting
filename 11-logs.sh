#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m" # normal color
timestamp=$(date +%F-%H-%M-%S)

logfile="/tmp/$0-$timestamp.log"
 # special variables will work in double quotes
echo "script started executing at $timestamp"

validate(){
  if [ $1 -ne 0 ]
  then
    echo -e "ERROR::$2 .. $R failed $N"
    exit 1
  else
    echo -e "$2 ..  $G  success $N"
  fi
}

if [ $ID -ne 0 ]
then
  echo -e "$R ERROR:: please run this script with root access $N"
  exit 1 # we can give other than 0
else
  echo "you are root user"
fi # fi is end of conditional programme

yum install mysql -y &>> $logfile
validate $? "installing mysql" # $1 is exit status $2 is installing mysql or git

yum install git -y &>> $logfile
validate $? "installing git"