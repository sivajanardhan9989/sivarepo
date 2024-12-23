#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then 
         echo " $2 failure "
    else 
         echo " $1  success "
    fi 
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

VALIDATE  $?  "installing mysql"

yum install postfix -y

VALIDATE  $? " installing postfix "
