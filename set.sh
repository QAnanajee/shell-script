#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run this script with root access"
exit 1
else
echo "you are super user"
fi

dnf install mysql12345 -y

dnf install git -y

echo "Is script recording?"