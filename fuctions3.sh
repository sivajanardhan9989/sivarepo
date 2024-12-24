userid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
if [$user -ne 0 ] 
then 
    echo  -e "error :: please run scripit with root access $N"
    exit 1 

fi 

for i in $@
do 
    yum install $i -y 
done 

