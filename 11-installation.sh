#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed gitttt #just checking whether installed or not

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it..."
    dnf install gittttt -y #here installing
    if [ $? -ne 0 ]
    then
        echo "git installation is not success.check it..."
        exit 1
    else
        echo "git installation is success"
    fi
        
else
     echo "Git is already installed.nothing to do..."
fi


