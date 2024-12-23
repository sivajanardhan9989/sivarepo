#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

if  [ $USERID -ne 0 ]
then 
    echo " ERROR:: Please run this script with root access"
    

fi

yum install mysql -y 


if  [ $? -ne 0 ]
then 
    echo " install of mysql having error "
    exit 1
else "installation is sucesss "

fi
yum install postfix -y

if  [ $? -ne 0 ]
then 
    echo " install of post having error "
    exit 1
else "installation of postfix is  sucesss "

fi




