#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git #just checking whether installed or not

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it..."
    dnf install git -y #here installing
else
     echo "Git is already installed.nothing to do..."
fi


