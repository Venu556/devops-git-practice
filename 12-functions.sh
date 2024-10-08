#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

VALIDATE (){
     if [ $1 -ne 0 ]
     then
         echo "$2 is failed"
         exit 1
     else
        echo "$2 is success"
     fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git #just checking whether installed or not

VALIDATE $? "Listing git"

# if [ $? -ne 0 ]
# then
#     echo "Git is not installed, going to install it..."
#     dnf install git -y #here installing
#     if [ $? -ne 0 ]
#     then
#         echo "git installation is not success.check it..."
#         exit 1
#     else
#         echo "git installation is success"
#     fi
        
# else
#      echo "Git is already installed.nothing to do..."
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then
#     echo "mysql is not installed.going to install it"
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then
#         echo "mysql installation is failure..please check"
#         exit 1
#     else
#         echo "mysql installatio is success"
#     fi
# else
#     echo "mysql is already installed...nothing to do"
# fi