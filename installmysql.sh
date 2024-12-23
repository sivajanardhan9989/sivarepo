
#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then 
    echo "error : please run script with root user "
    exit 1
fi 

yum install mysql -y 