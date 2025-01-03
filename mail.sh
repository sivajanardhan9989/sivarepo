#!/bin/bash
#colours 
#validations 
#logredirections 

DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log
LOGFILE_DIRECTORY=/tmp
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

while IFS= read line
do 
  echo "output: $line"

  done <<< $DISK_USAGE

