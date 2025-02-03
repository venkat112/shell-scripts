#!/bin/bash

ID=$(id -u)

if [ ID -ne 0]
echo " ERROR: please run with root user"
then
echo "you are a root user"
else
fi