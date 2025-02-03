#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
 echo " ERROR: please run with root user"
 exit 1
else
 echo "you are a root user"
fi

yum install wget -y



if [ $? -ne 0 ]
then
   echo "error: mysql is not installed"
   exit 1 
else
   echo " mysql installed successfully "
fi     