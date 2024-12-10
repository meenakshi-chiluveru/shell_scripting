#!/bin/bash

ID=$(ID -U)
R="\e[31m"
G="\e[32m"
N="\e[0m" # normal color
Y="\e[33m"
timestamp=$(date +%F-%F-%M-%S)
logfile="/tmp/$0-$timestamp.log"

echo "script started executing at $timestamp" &>> $logfile

validate(){
  if [ $! -ne 0 ]
  then
    echo -e "$2 .. $R failed $N"
  else
    echo -e "$2 .. $G success $N"
  fi
}

if [ $ID -ne 0 ]
then
  echo -e "$R ERROR:: please run this script with root access $N"
  exit 1 # you can give other than 0
else
  echo "you are root user"
fi # fi means reverse of if, indicating condition end


 #echo "All arguments passed: $@"

 for package in $@
 do
   yum list installed $package  &>> $logfile
   if [ $? -ne 0 ] # if not installed
   then
     yum install $package -y &>> $logfile
     validate $? "installation of $package"
   else
     echo -e "$package is already installed ..$Y skipping $N"
    fi
 done