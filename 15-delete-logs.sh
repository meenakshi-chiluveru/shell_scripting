#!/bin/bash

source_dir="tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $source_dir ] # ! denotes opposite
then
  echo -e "$R source directory: $source_dir does not exists. $N"
fi

FILE_TO_DELETE=$(find $source_dir -type f -mtime +14 -name "*.log")

while IFS= read -r line # IFS=internal field seperator
do
  echo "Deleting file: $line"
  rm -rf $line
done <<< $FILE_TO_DELETE