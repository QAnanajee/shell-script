#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run this script with root access"
else
echo "you are super user"
fi

dnf install mysql -y

if [ $?-ne 0 ]
then
echo "Installtion of mysql....FAILURE"
exit 1
else 
echo "Installtion of mysql....SUCCESS"
fi

dnf install git -y

if [ $?-ne 0 ]
then
echo "Installtion of git....FAILURE"
exit 1
else 
echo "Installtion of git....SUCCESS"
fi

echo "Is script recording?"