#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ] # ! denotes opposite
then
  echo -e "$R source directory: $source_dir does not exists. $N"
fi

while IFS=":" read -r username passwd user_id grp_id user_fulname home_dir shell
do
   echo "username:$usernam"
   echo :user_id: $user_id
   echo "user full name"
done < $file