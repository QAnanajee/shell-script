#1/bin/bash

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access"
    exit 1
else
    echo -e "$R you are super user $N"
fi

for i in $@
do
    echo "package to install: $i"
    dnf list installed $i &>>$LOGFILE

    if [ $? -eq 0 ]
    then
        echo -e "$Y $i already installed.....so SKIPPED $N"
    else
        echo -e "$G $i not installed.....need to install... $N"
    fi
done