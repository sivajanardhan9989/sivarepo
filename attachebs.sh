#attach ebs volume to runing ec2 instance 

#EBS volume should be in same AZ where your instance running 
### steps 
by default  you cant see volume in aws linux , we need to do configuration 


#create  file system from volume 
...

sudo mkfs -t  xfs /dev/xvdf

sudo mkdir /data 

sudo mount  /dev/xvdf  /data

...