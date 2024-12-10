#!/bin/bash

ID=$(ID -U)
R="\e[31m"
G="\e[32m"
N="\e[0m" # normal color

if [ $ID -ne 0 ]
then
  echo -e "$R ERROR:: please run this script with root access $N"
  exit 1 # you can give other than 0
else
  echo "you are root user"
fi # fi means reverse of if, indicating condition end

echo "All arguments passed:$@"