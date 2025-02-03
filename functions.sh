#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log   
echo -e "Executing of $0  $R is started $N at $TIMESTAMP"
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
   echo -e "$R you are not a root user $N"
   exit 1

else
   echo -e "$G you are a root user $N"
fi

yum install net-tools -y &>> $LOGFILE

VALIDATE $? "net-tools"

yum install git -y &>> $LOGFILE

VALIDATE $? "git"
     

