#!/bin/bash

ID=$(id -u)
echo "name of this script is $0 "
VALIDATE(){
if [ $1 -ne 0 ]
then
  echo "installation of $2 failed"
  exit 1
else
  echo "installation of $2 success"
fi  
     

}

if [ $ID -ne 0 ]
then
   echo "you are not a root user"
   exit 1

else
   echo " you are a root user"
fi

yum install net-tools -y

VALIDATE $? "net-tools"

yum install git -y

VALIDATE $? "git"
     

